## PHP FPM/CLI docker images
The image is based on [ppa:ondrej/php](https://launchpad.net/~ondrej/+archive/ubuntu/php) builds and Ubuntu Xenial packages on top of [clover/base](https://hub.docker.com/r/clover/base/).

All PHP modules are enabled by default at `/etc/php/{7.1,7.0,5.6}/{cli,fpm}/conf.d/`.
PHP FPM pool is pre-configured in `/etc/php/{7.1,7.0,5.6}/fpm/pool.d/www.conf` to use `www-data` user and group.

### Available PHP modules
amqp, apcu, apcu-bc (7.x), ast (7.x), bcmath, bz2, calendar, ctype, curl, dba, dom, ds (7.x), enchant, exif, fileinfo, ftp, gd, gearman, geoip, gettext, gmagick, gmp, gnupg, http, iconv, igbinary, imagick, imap, interbase, intl, json, ldap, sodium, libvirt-php, mailparse, mbstring, mcrypt, memcache, memcached, mongo (5.6), mongodb, msgpack, mssql (5.6), mysql (5.6), mysqli, mysqlnd, oauth, odbc, opcache, pdo, pdo-dblib, pdo-firebird, pdo-mysql, pdo-odbc, pdo-pgsql, pdo-sqlite, pgsql, phalcon, phar, posix, propro, pspell, radius, raphf, readline, recode, redis, rrd, shmop, simplexml, snmp, soap, sockets, solr, sqlite3, ssh2, stomp, sysvmsg, sysvsem, sysvshm, tideways, tidy, tokenizer, uploadprogress (5.6, 7.0), uuid, wddx, xcache (5.6), xdebug, xhprof (5.6), xml, xmlreader, xmlwriter, xmlrpc, xsl, yac, yaml, zip, zmq.
For more details see [MODULES.md](MODULES.md)
