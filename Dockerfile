FROM mauricelambert/webscripts:latest

COPY --chown=www-data:www-data ./config/server.json /usr/src/WebScripts/config/server.json
RUN python3 -c 'd=open("/usr/src/WebScripts/config/server.json").read().replace("./","/usr/src/WebScripts/");open("/usr/src/WebScripts/config/server.json","w").write(d)'
RUN chown root:root /usr/src/WebScripts/config/
RUN chmod 755 /usr/src/WebScripts/config/
RUN chmod 400 /usr/src/WebScripts/config/server.json

COPY --chown=www-data:www-data ./python/scripts/order_instance.py /usr/src/WebScripts/scripts/c2/order_instance.py
COPY --chown=www-data:www-data ./python/scripts/order_template.py /usr/src/WebScripts/scripts/c2/order_template.py
RUN chown root:root /usr/src/WebScripts/scripts/
RUN chmod 755 /usr/src/WebScripts/scripts/
RUN chown root:root /usr/src/WebScripts/scripts/c2/
RUN chmod 755 /usr/src/WebScripts/scripts/c2/
RUN chmod 400 /usr/src/WebScripts/scripts/c2/order_instance.py
RUN chmod 400 /usr/src/WebScripts/scripts/c2/order_template.py

COPY --chown=www-data:www-data ./python/C2/c2.py /usr/src/WebScripts/modules/c2.py
RUN chown root:root /usr/src/WebScripts/modules/
RUN chmod 755 /usr/src/WebScripts/modules/
RUN chmod 400 /usr/src/WebScripts/modules/c2.py

COPY --chown=www-data:www-data ./sql/c2_ex_machina.db /usr/src/WebScripts/data/c2_ex_machina.db
RUN chmod 400 /usr/src/WebScripts/data/c2_ex_machina.db
