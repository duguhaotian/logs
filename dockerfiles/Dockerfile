FROM centos

RUN yum -y update
RUN yum -y install httpd httpd-devel zip unzip tar wget
RUN yum -y install php php-xml php-pdo php-gd php-mbstring sqlite sqlite-devel

#RUN wget --no-check-certificate https://wordpress.org/latest.tar.gz
RUN wget --no-check-certificate https://cn.wordpress.org/wordpress-4.5.3-zh_CN.tar.gz
RUN wget --no-check-certificate https://downloads.wordpress.org/plugin/sqlite-integration.1.8.1.zip
RUN tar xvfz ./wordpress-4.5.3-zh_CN.tar.gz
RUN unzip ./sqlite-integration.1.8.1.zip
RUN rm -f ./wordpress-4.5.3-zh_CN.tar.gz
RUN rm -f ./sqlite-integration.1.8.1.zip
RUN mv wordpress /var/lib/wordpress
RUN chown -R apache.apache /var/lib/wordpress
RUN mv /var/lib/wordpress/wp-config-sample.php /var/lib/wordpress/wp-config.php
RUN mv sqlite-integration /var/lib/wordpress/wp-content/plugins/
RUN mv /var/lib/wordpress/wp-content/plugins/sqlite-integration/db.php \
       /var/lib/wordpress/wp-content/

RUN echo "yes n | cp -ripf /var/lib/wordpress/* /var/www/html/ > /dev/null 2>&1" >> /root/.bash_profile

VOLUME /var/www/html

RUN systemctl enable httpd

EXPOSE 80

#docker run --privileged -itd -p 8080:80 -v /root/wordpress/public_html:/var/www/html wordpress_sqlite bash -l -c "/sbin/init"
