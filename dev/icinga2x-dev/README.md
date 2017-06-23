# Icinga 2 Dev Box for CentOS 7


```
vagrant up
```

```
ssh -A vagrant@192.168.33.188
```

```
git clone git@github.com:icinga/icinga2.git
cd icinga2
```

```
export CC='ccache gcc'
export CXX='ccache g++'
export I2_DEBUG="-DCMAKE_BUILD_TYPE=Debug -DICINGA2_UNITY_BUILD=OFF -DICINGA2_WITH_STUDIO=OFF -DCMAKE_INSTALL_PREFIX=/usr/local/icinga2"

mkdir debug
cd debug; cmake $I2_DEBUG ..; cd ..
```

```
sudo make -j4 install -C debug
```


```
groupadd icinga
groupadd icingacmd
useradd -c "icinga" -s /sbin/nologin -G icingacmd -g icinga icinga

/usr/local/icinga2/lib/icinga2/prepare-dirs /usr/local/icinga2/etc/sysconfig/icinga2
chown -R icinga:icinga /usr/local/icinga2/var/

```
