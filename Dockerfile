FROM debian:buster
RUN dpkg --add-architecture i386
RUN apt-get -y update
RUN apt-get -y --no-install-recommends install software-properties-common apt-utils
RUN apt-get -y update
RUN apt-get -y --no-install-recommends install libc6:i386 libstdc++6:i386
RUN apt-get -y --no-install-recommends install mtools g++ gcc make dos2unix python3 libncurses-dev bison flex wget curl git libncurses5-dev libreadline-dev autoconf automake texinfo libisl-dev gcc-multilib g++-multilib xz-utils make python3-pip cmake
RUN apt-get -y --no-install-recommends install qtdeclarative5-dev qtbase5-dev
RUN apt-get -y autoremove
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/
RUN rm -rf /var/cache/apt/archives 
RUN rm -rf /usr/share/doc/
RUN rm -rf /usr/share/man/
RUN rm -rf /usr/share/locale/
