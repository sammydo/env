#pull down new code

cd ~/env
git pull
berks vendor cookbooks
sudo chef-client --local-mode --runlist 'recipe[node-server]'


cd ~/digital_profiles
git pull
sudo npm install
export MONGODB_URI=mongodb://3git fetch --all
4.248.151.171
pm2 kill
pm2 start index.js
