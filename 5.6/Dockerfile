#
# This is a multi-stage build.
# Actual build is at the very end.
#

FROM library/ubuntu:xenial AS build

ENV DEBIAN_FRONTEND noninteractive
ENV LANG C.UTF-8
RUN apt-get update && \
    apt-get install -y \
        python-software-properties \
        software-properties-common \
        apt-utils

RUN add-apt-repository -y ppa:ondrej/php && \
    apt-get update

RUN mkdir -p /build/image
WORKDIR /build
RUN apt-get download \
        ca-certificates \
        firebird2.5-common \
        fontconfig \
        fontconfig-config \
        freetds-common \
        gnupg2 \
        gnupg-agent \
        imagemagick-common \
        libapparmor1 \
        libasn1-8-heimdal \
        libaspell15 \
        libassuan0 \
        libaudit1 \
        libaudit-common \
        libavahi-client3 \
        libavahi-common3 \
        libavahi-common-data \
        libbsd0 \
        libbz2-1.0 \
        libc6 \
        libcairo2 \
        libcap-ng0 \
        libc-client2007e \
        libcomerr2 \
        libcurl3 \
        libcurl3-gnutls \
        libdatrie1 \
        libdb5.3 \
        libdbi1 \
        libdbus-1-3 \
        libdevmapper1.02.1 \
        libedit2 \
        libenchant1c2a \
        libevent-2.0-5 \
        libexpat1 \
        libfbclient2 \
        libffi6 \
        libfftw3-double3 \
        libfontconfig1 \
        libfreetype6 \
        libgcc1 \
        libgcrypt20 \
        libgd3 \
        libgearman8 \
        libgeoip1 \
        libglib2.0-0 \
        libgmp10 \
        libgnutls30 \
        libgomp1 \
        libgpg-error0 \
        libgpgme11 \
        libgraphicsmagick-q16-3 \
        libgraphite2-3 \
        libgssapi3-heimdal \
        libgssapi-krb5-2 \
        libharfbuzz0b \
        libhcrypto4-heimdal \
        libheimbase1-heimdal \
        libheimntlm0-heimdal \
        libhogweed4 \
        libhunspell-1.3-0 \
        libhx509-5-heimdal \
        libicu55 \
        libidn11 \
        libjasper1 \
        libjbig0 \
        libjpeg8 \
        libjpeg-turbo8 \
        libk5crypto3 \
        libkeyutils1 \
        libkrb5-26-heimdal \
        libkrb5-3 \
        libkrb5support0 \
        libksba8 \
        liblcms2-2 \
        libldap-2.4-2 \
        liblqr-1-0 \
        libltdl7 \
        liblzma5 \
        libmagic1 \
        libmagickcore-6.q16-2 \
        libmagickwand-6.q16-2 \
        libmcrypt4 \
        libmemcached11 \
        libncursesw5 \
        libnettle6 \
        libnl-3-200 \
        libnpth0 \
        libnuma1 \
        libodbc1 \
        libp11-kit0 \
        libpam0g \
        libpam-modules \
        libpam-modules-bin \
        libpango-1.0-0 \
        libpangocairo-1.0-0 \
        libpangoft2-1.0-0 \
        libpcre3 \
        libpgm-5.2-0 \
        libpixman-1-0 \
        libpng12-0 \
        libpq5 \
        libqdbm14 \
        librabbitmq4 \
        libreadline6 \
        librecode0 \
        libroken18-heimdal \
        librrd4 \
        librtmp1 \
        libsasl2-2 \
        libsasl2-modules-db \
        libselinux1 \
        libsodium18 \
        libsqlite3-0 \
        libssh2-1 \
        libssl1.0.0 \
        libssl1.1 \
        libstdc++6 \
        libsybdb5 \
        libsystemd0 \
        libtasn1-6 \
        libthai0 \
        libthai-data \
        libtidy5 \
        libtiff5 \
        libtinfo5 \
        libudev1 \
        libuuid1 \
        libvirt0 \
        libwebp5 \
        libwind0-heimdal \
        libwmf0.2-7 \
        libx11-6 \
        libx11-data \
        libxau6 \
        libxcb1 \
        libxcb-render0 \
        libxcb-shm0 \
        libxdmcp6 \
        libxen-4.6 \
        libxenstore3.0 \
        libxext6 \
        libxml2 \
        libxmlrpc-epi0 \
        libxpm4 \
        libxrender1 \
        libxslt1.1 \
        libyajl2 \
        libyaml-0-2 \
        libzip4 \
        libzmq5 \
        mime-support \
        mlock \
        php-amqp \
        php-apcu \
        php5.6-bcmath \
        php5.6-bz2 \
        php5.6-cli \
        php5.6-common \
        php5.6-curl \
        php5.6-dba \
        php5.6-enchant \
        php5.6-fpm \
        php5.6-gd \
        php-gearman \
        php-geoip \
        php-gettext \
        php-gmagick \
        php5.6-gmp \
        php-gnupg \
        php-http \
        php-igbinary \
        php-imagick \
        php5.6-imap \
        php5.6-interbase \
        php5.6-intl \
        php5.6-json \
        php5.6-ldap \
        php-sodium \
        php-libvirt-php \
        php-mailparse \
        php5.6-mbstring \
        php5.6-mcrypt \
        php-memcache \
        php-memcached \
        php-mongo \
        php-mongodb \
        php-msgpack \
        php5.6-mysql \
        php-oauth \
        php5.6-odbc \
        php5.6-opcache \
        php-pgsql \
        php-phalcon \
        php-propro \
        php5.6-pspell \
        php-radius \
        php-raphf \
        php5.6-readline \
        php5.6-recode \
        php-redis \
        php-rrd \
        php5.6-soap \
        php-solr \
        php5.6-sqlite \
        php5.6-sqlite3 \
        php-ssh2 \
        php-stomp \
        php5.6-sybase \
        php-tideways \
        php5.6-tidy \
        php-uploadprogress \
        php-uuid \
        php-xcache \
        php-xdebug \
        php-xhprof \
        php5.6-xml \
        php5.6-xmlrpc \
        php5.6-xsl \
        php-yac \
        php-yaml \
        php5.6-zip \
        php-zmq \
        pinentry-curses \
        readline-common \
        tzdata \
        zlib1g
RUN for file in *.deb; do dpkg-deb -x ${file} image/; done

WORKDIR /build/image

RUN mkdir -p \
        var/lib/php/sessions \
        var/log \
        run/php \
        etc/php/5.6/fpm \
        etc/php/5.6/cli && \
    chmod 1777 var/lib/php/sessions && \
    mv usr/lib/php/5.6/php.ini-production etc/php/5.6/fpm/php.ini && \
    mv usr/lib/php/5.6/php.ini-production.cli etc/php/5.6/cli/php.ini && \
    mv usr/share/php5.6-*/*/*.ini etc/php/5.6/mods-available && \
    rm -rf \
        etc/X11 \
        etc/apache2 \
        etc/ca-certificates \
        etc/freetds \
        etc/gss \
        etc/init \
        etc/init.d \
        etc/logrotate.d \
        etc/php/5.5 \
        etc/php/7.0 \
        etc/php/7.1 \
        etc/php/7.2 \
        etc/mailcap.order \
        lib/systemd \
        lib/udev \
        usr/bin/cautious-launcher \
        usr/bin/compose \
        usr/bin/edit \
        usr/bin/print \
        usr/bin/run-mailcap \
        usr/bin/see \
        usr/include \
        usr/lib/aspell/x86_64-linux-gnu/*.la \
        usr/lib/x86_64-linux-gnu/ImageMagick-6.8.9/modules-Q16/coders/*.la \
        usr/lib/x86_64-linux-gnu/ImageMagick-6.8.9/modules-Q16/filters/*.la \
        usr/lib/mime \
        usr/lib/odbc \
        usr/lib/tmpfiles.d \
        usr/lib/php/5.6 \
        usr/lib/php/php5.6-fpm-reopenlogs \
        usr/lib/php/20121212 \
        usr/lib/php/20131226/*.la \
        usr/lib/php/20151012 \
        usr/lib/php/20160303 \
        usr/lib/php/20160731 \
        usr/lib/php/20170718 \
        usr/sbin/addgnupghome \
        usr/sbin/applygnupgdefaults \
        usr/sbin/tzconfig \
        usr/sbin/update-mime \
        usr/share/doc \
        usr/share/man \
        usr/share/info \
        usr/share/apport \
        usr/share/bug \
        usr/share/doc-base \
        usr/share/lintian \
        usr/share/upstart \
        usr/share/firebird2.5-common \
        usr/share/gcc-5 \
        usr/share/gdb \
        usr/share/gnupg2/*.txt \
        usr/share/gnupg2/gpg-conf.skel \
        usr/share/php5.6-* && \
    cat usr/share/ca-certificates/mozilla/*.crt > etc/ssl/certs/ca-certificates.crt && \
    ln -s php5.6 usr/bin/php && \
    ln -s phar5.6 usr/bin/phar && \
    ln -s phar.phar5.6 usr/bin/phar.phar && \
    ln -s php-fpm5.6 usr/sbin/php-fpm && \
    ln -s /dev/stderr var/log/php5.6-fpm.log && \
    sed -i -r \
        's, *listen *= *.*,listen = 9000,g' \
        etc/php/5.6/fpm/pool.d/www.conf && \
    sed -i -r \
        's,[ ;]*systemd_interval *= *.*,systemd_interval = 0,g' \
        etc/php/5.6/fpm/php-fpm.conf && \
    for file in etc/php/5.6/mods-available/*.ini; do \
        priority=$(grep -E " *; *priority=" ${file} | sed -r "s/ *; *priority *= *([0-9]+.*)/\1/g"); \
        if [ -z "${priority}" ]; then priority=20; fi; \
        ln -s "../../mods-available/$(basename ${file})" etc/php/5.6/cli/conf.d/${priority}-$(basename ${file}) && \
        ln -s "../../mods-available/$(basename ${file})" etc/php/5.6/fpm/conf.d/${priority}-$(basename ${file}); \
    done


FROM clover/base

WORKDIR /
COPY --from=build /build/image /

CMD ["php-fpm", "-F"]

EXPOSE 9000
