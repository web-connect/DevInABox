# Generic Rails Dev Server
This environment enables you to develop most Ruby on Rails applications.

## Installation
1. Run `vagrant up`
2. (Optional) ** Run `vagrant ssh`
3. (Optional) Run `rvm use 1.9.3` OR Run `rvm use 2.0.0`

** Needs to have SSH as part of your local PATH. If, for example, you're using windows and the ssh.exe is installed under "C:\Program Files (x86)\Gib\bin", you can run the following command to get ssh to work:
set PATH=%PATH%;C:\Program Files (x86)\Git\bin

Note: you can get ssh information running the following command: vagrant ssh-config

## Specs
This environment contains the following
* RVM
* Initial Ruby runtime: 1.9.3-p0
* MySQL-Server
* MySQL-Client

## Notes
RVM is used to manage your ruby versions and gems. 

### Port Proxies
* Port 3000 is proxied to your host, so after starting a simple rails server you can go to http://localhost:3000/ on your host machine to access the app. 
* Port 22 is mapped to 2222, if you wish to ssh into your localhost:2222 you can

### Directory Mappings
* `/opt/data` is mapped to the `./data` folder on your host.
