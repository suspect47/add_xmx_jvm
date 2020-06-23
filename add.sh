# search and delete -Xmx parameter in /usr/bin/ultima-vmc and copy file to /opt
# add string 'addJava "-Xmx3g"' or similar
# replace target file
sed '/-Xmx/d' /usr/bin/ultima-vmc > /opt/ultima-vmc
sed -e '/run "$@"/i \addJava "-Xmx3g"' /opt/ultima-vmc > /opt/ultima-vmc.bak
cp -rf /opt/ultima-vmc.bak /usr/bin/ultima-vmc
