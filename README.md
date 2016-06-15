# HomeBridge Raspberry Pi Example Settings
This is an up-to-date set of installation instructions and scripts to setup [HomeBridge][home-bridge] on a Raspberry Pi *easily*.

## Aim
Enable 'easy' setup of HomeBridge on a Raspbian based RaspberryPi

## Initial steps
> **Note:** You should ensure your Raspberry Pi's system clock is up to date before running the below commands. You can update the clock by running:
> ```
> date -s "2016-06-15 11:01:35"
> ```
> Replacing the contents with the correct date/time in the format: "YEAR-MONTH-DAY HOUR:MIN:SECOND"

```bash
sudo apt-get update
sudo apt-get dist-upgrade
sudo apt-get remove ntpd
sudo apt-get install openntpd git make libavahi-compat-libdnssd-dev
sudo systemctl enable openntpd.service
sudo systemctl start openntpd.service
```

Next, install Node from [here][npm-install-url].

```bash
git clone https://github.com/mattrayner/homebridge-config.git
cd homebridge-config
sudo npm install -g homebridge
sh install.sh
```

[home-bridge]: https://github.com/nfarina/homebridge
[npm-install-url]: http://blog.wia.io/installing-node-js-v4-0-0-on-a-raspberry-pi
