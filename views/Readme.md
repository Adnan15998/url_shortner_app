 for installing npm and mongodb
 
 1345 URL Shortener npm install 
 1346  npm audit fix --force
 1347  node --version
 1348  curl -fsSL https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -
 1349  apt-key list
 1350  echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d mongodb-org-4.4.list
 1351  sudo apt update
 1352  sudo apt install mongodb-org
 1353  echo "deb http://security.ubuntu.com/ubuntu focal-security main" | sudo tee /etc/apt/sources.list.d/focal-security.list
 1354  sudo apt-get update
 1355  sudo apt-get install libssl1.1
 1356  sudo systemctl start mongod.service
 1357  sudo apt install mongodb-org
 1358  sudo rm /etc/apt/sources.list.d/focal-security.list
 1359  sudo systemctl start mongod.service
 1360  sudo systemctl status mongod