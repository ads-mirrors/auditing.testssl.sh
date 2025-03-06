
Binaries
========

All the precompiled binaries provided here have extended support for weak crypto which is normally not in OpenSSL or LibreSSL: 40+56 Bit,
export/ANON ciphers, weak DH ciphers, weak EC curves, SSLv2 etc. -- all the dirty features needed for testing if you just want to test with
binaries. They also come with extended support for some new / advanced cipher suites and/or features which are not in the official branch like (old version of the) CHACHA20+POLY1305 and CAMELLIA 256 bit ciphers.

However testssl.sh has emerged, and some time back it is using bash sockets for checks if the binary does not support a specific feature. So since then you could also use the OpenSSL / LibreSSL binary from your vendor. Check using binaries instead of bash sockets run a bit faster though. Also the usage of these binaries became more and more of a limited value:They don't support e.g. TLS 1.3 and newer TLS 1.2 ciphers. OTOH servers which only offer SSLv2 and SSLv3 became less common and we use for the majority of checks in testssl.sh sockets and not this binary. As a result the 3.2 release will probably be the last distribution where we will include these binaries.

# Security notices

The important thing upfront: **DO NOT USE THESE BINARIES FOR PRODUCTION PUPOSES**. A lot of security restrictions have been removed because we want to test how bad the servers are.


More
====

General
-------
The (stripped) binaries this directory are all compiled from the [old OpenSSL snapshot](https://github.com/testssl/openssl-1.0.2.bad) which adds a few bits to [Peter
Mosman's openssl fork](https://github.com/PeterMosmans/openssl). The few bits are IPv6 support (except IPV6 proxy) and some STARTTLS backports. More, see the [README.md](https://github.com/testssl/openssl-1.0.2.bad/README.md) . 

Compiled Linux and FreeBSD binaries so far came from Dirk, other contributors see ../CREDITS.md . Binaries for more architectures see [contributed builds @ https://testssl.sh/](https://testssl.sh/contributed_binaries/).


Compilation instructions
------------------------

See [https://github.com/testssl/openssl-1.0.2.bad/README.md](https://github.com/testssl/openssl-1.0.2.bad/README.md)

