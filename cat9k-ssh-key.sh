rm ~/.ssh/known_hosts
# Tim's ssh-keyscan Script
currdate=$(date +'%Y-%m-%d_%H-%M-%S')
echo "Current Date and Time is $currdate" >> ~/.ssh/known_hosts
echo "Adding Cat9300 SSH Keys for Cisco Live" >> ~/.ssh/known_hosts
ssh-keyscan 10.1.1.5 >> ~/.ssh/known_hosts
ssh-keyscan -p 830 10.1.1.5 >> ~/.ssh/known_hosts
ssh-keyscan 10.1.1.55 >> ~/.ssh/known_hosts
ssh-keyscan -p 830 10.1.1.55 >> ~/.ssh/known_hosts

