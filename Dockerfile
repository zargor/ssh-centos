FROM openshift/jenkins-1-centos7
COPY plugins.txt /opt/openshift/configuration/plugins.txt
RUN /usr/local/bin/plugins.sh /opt/openshift/configuration/plugins.txt

RUN yum -y install nss_wrapper gettext

COPY s2i /usr/libexec/s2i
RUN chmod 777 -R /usr/libexec/s2i

USER 1001
