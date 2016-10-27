Apt-get install file的时候报如下错误：
Error: Cannot get debconf version. Is debconf installed

解决方法：
	1. 修改/var/lib/dpkg/status，把所有的unpacked改为installed
	2. Dpkg --configure --pending
	3. apt-get install --reinstall multiarch-support libgcc1 debconf
	（重新安装缺少的包和库）
	
http://askubuntu.com/questions/220649/problem-installing-packages/485293
