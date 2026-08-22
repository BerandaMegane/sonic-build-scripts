## 使い方

```
git clone https://github.com/BerandaMegane/sonic-build-scripts.git
cd sonic-build-scripts
bash env-setup.sh
sudo reboot

cd ~/sonic-build-scripts/sonic-buildimage
screen
build.sh 2>&1 | tee build.log
```
