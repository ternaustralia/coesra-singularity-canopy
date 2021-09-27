FROM ubuntu:18.04

RUN apt update -y
RUN apt-get install -y \
     software-properties-common \
     wget \
     python2.7 \
     ipython \
     ipython3 \
     locales \
     default-jre

RUN locale-gen en_AU.UTF-8

RUN cd /tmp
RUN wget --no-check-certificate https://swift.rc.nectar.org.au/v1/AUTH_05bca33fce34447ba7033b9305947f11/canopy/canopy-2.1.9.rh6-x86_64-cp35.sh
RUN chmod +x ./canopy-2.1.9.rh6-x86_64-cp35.sh
RUN ./canopy-2.1.9.rh6-x86_64-cp35.sh -b -p /opt/canopy

ENTRYPOINT [ "/opt/canopy/canopy" ]

