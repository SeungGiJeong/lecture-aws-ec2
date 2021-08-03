Content-Type: multipart/mixed; boundary="//"
MIME-Version: 1.0
 
--//
Content-Type: text/cloud-config; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename="cloud-config.txt"
 
#cloud-config
cloud_final_modules:
- [scripts-user, once]
 
--//
Content-Type: text/x-shellscript; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename="userdata.txt"
 
#!/bin/bash
sudo apt update -y && sudo apt upgrade -y
sudo apt-get install python3.7 -y
sudo apt install python3-pip -y
cd /home/ubuntu/
git clone https://github.com/SeungGiJeong/lecture-aws-ec2.git 
pip3 install -r /home/ubuntu/lecture-aws-ec2/requirements.txt
python3 /home/ubuntu/lecture-aws-ec2/manage.py &
