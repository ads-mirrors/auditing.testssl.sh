
Binaries
========

The precompiled binaries provided in this directory have extended support for weak crypto which is normally not in OpenSSL
or LibreSSL: 40+56 Bit, export/ANON ciphers, weak DH ciphers, weak EC curves, SSLv2 etc. -- all the dirty features needed for
testing if you just ant to test with binaries. They also come with extended support for some  advanced cipher suites and/or
features which are not in the offcial branch like (old version of the) CHACHA20+POLY1305 and CAMELLIA 256 bit ciphers.

# Security notices

The important thing upfront: **DO NOT USE THESE BINARIES FOR PRODUCTION PURPOSES**. A lot of security restrictions have been removed because we want to test how bad the servers are.


More
====

testssl.sh has emerged a longer while back, so in general these binaries are not needed anymore as weak crypto is covered by bash sockets if the binary from the vendor can't handle weak crypto. In a future release they could be be retired.

Checks using binaries instead of bash sockets run a bit faster though. For modern servers the usage of the binaries provided by our project might come with a limited value: They don't support e.g. TLS 1.3 and lack nerwer TLS 1.2 ciphers. OTOH servers which only offer SSLv2 and SSLv3 became less common.

One other thing worth to mention is that any binary can handle protocols on top of SSL/TLS better (or at all) once encrypted connection is established, like retrieving the HTTP header. OTOH as of 2024/2025 distributors/vendors however still support weaker crypto with TLS 1.0 or TLS 1.1, most of them even support SSLv3. That is possible with some tweaks which testssl.sh applies. So using older binaries like the ones in this directory are very often not needed.


General
-------
The (stripped) binaries this directory are all compiled from the [old OpenSSL snapshot](https://github.com/testssl/openssl-1.0.2.bad) which adds a few bits to [Peter
Mosman's openssl fork](https://github.com/PeterMosmans/openssl). The few bits are IPv6 support (except IPV6 proxy) and some STARTTLS backports. More, see the [README.md](https://github.com/testssl/openssl-1.0.2.bad/README.md). Also, as of now, a few CVEs were fixed.

Compiled Linux and FreeBSD binaries so far came from Dirk, other contributors see ../CREDITS.md . A few binaries were removed in the latest edition, which are Kerberos binaries and 32 Bit binaries. Those and binaries for more architectures can be retrieved from [contributed builds @ https://testssl.sh/](https://testssl.sh/contributed_binaries/). Those binaries are not stripped.

The diff krb5-ciphers.diff shows the additional ciphers when using the kerberos binary.


Compilation instructions
------------------------

See [https://github.com/testssl/openssl-1.0.2.bad/00-testssl-stuff/Readme.md](https://github.com/testssl/openssl-1.0.2.bad/00-testssl-stuff/Readme.md)

