# Download centoes
FROM  centos:7

# Install packages
RUN   yum install telnet -y && \
      yum install httpd-tools -y && \
      yum install wget -y && \
      yum install unzip -y


# Open port 80
EXPOSE   80 

# Copy file into webserver
COPY index.html  /var/www/html/index.html
RUN  chmod 755         /var/www/html/index.html

# Keep application alive
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
