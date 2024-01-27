git clone https://github.com/C2-EX-MACHINA/C2
cd C2/sql
python3 create_c2_ex_machina_database.py
cd ..
wget https://raw.githubusercontent.com/C2-EX-MACHINA/Deployment/main/Dockerfile
sudo docker built . -t c2exmachina
