FROM agileapp/teamcity-agent-base

MAINTAINER Aleksandr Shepeliev <a.shepeliev@gmail.com>

ENV ANDROID_HOME /opt/android-sdk-linux

ENV PATH $ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$PATH

RUN dpkg --add-architecture i386 \
   && apt-get update \
   && apt-get install -y libncurses5:i386 libstdc++6:i386 zlib1g:i386 \
   && wget -qO- http://dl.google.com/android/android-sdk_r24.4.1-linux.tgz | tar xz -C /opt \
   && echo "y" | android update sdk -u -a -t 1 \
   && echo "y" | android update sdk -u -a -t 2 \
   && echo "y" | android update sdk -u -a -t 6 \
   && echo "y" | android update sdk -u -a -t 25 \
   && echo "y" | android update sdk -u -a -t 26 \
   && echo "y" | android update sdk -u -a -t 143 \
   && echo "y" | android update sdk -u -a -t 144 \
   && echo "y" | android update sdk -u -a -t 150 \
   && echo "y" | android update sdk -u -a -t 151 \
   && echo "y" | android update sdk -u -a -t 152 \
   && echo "y" | android update sdk -u -a -t 153 \
   && echo "y" | android update sdk -u -a -t 154 \
   && echo "y" | android update sdk -u -a -t 155 \
   && echo "y" | android update sdk -u -a -t 156

VOLUME ["/var/android/"]
