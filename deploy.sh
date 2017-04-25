#pull down new code

cd ~/env
git pull
berks vendor cookbooks
sudo chef-client --local-mode --runlist 'recipe[node-server]'


cd ~/digital_profiles
git pull
sudo npm install
sudo npm install -g bower
mv bower_components/ public/bower_components
pm2 kill
pm2 start index.js
