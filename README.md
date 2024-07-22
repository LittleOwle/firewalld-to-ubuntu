# firewalld-to-ubuntu
build utilities and installation of updated version of firewalld on ubuntu
                     
created for internal use by Jamil Services

~~~bash
$ cat /etc/lsb-release 
DISTRIB_ID=Ubuntu
DISTRIB_RELEASE=22.04
DISTRIB_CODENAME=jammy
DISTRIB_DESCRIPTION="Ubuntu 22.04.4 LTS"
~~~

firewalld: https://github.com/firewalld/firewalld

install:
~~~bash
curl https://raw.githubusercontent.com/LittleOwle/firewalld-to-ubuntu/main/scripts/build.sh -sSf | sudo bash
~~~


remove:
~~~bash
curl https://raw.githubusercontent.com/LittleOwle/firewalld-to-ubuntu/main/scripts/remove.sh -sSf | sudo bash
~~~


export:
~~~bash
export PATH=/opt/owle-externals/build/firewalld/bin:$PATH
~~~

config files:          
 - `/opt/owle-externals/build/firewalld/etc/firewalld`
 - `/opt/owle-externals/build/firewalld/lib/firewalld`
 - `/opt/owle-externals/build/firewalld/lib/systemd/system/firewalld.service`
