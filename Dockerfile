FROM rhel

MAINTAINER anthony@atgreen.org

RUN yum -y install curl
ADD script.sh /
RUN chmod ug+rwx /script.sh && chown 1001:0 /script.sh
USER 1001
CMD ["/bin/bash", "/script.sh"]









