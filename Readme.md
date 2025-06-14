
## Intro

[![Build Status](https://github.com/testssl/testssl.sh/actions/workflows/test.yml/badge.svg)](https://github.com/testssl/testssl.sh/actions/workflows/test.yml)
[![Gitter](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/testssl/testssl.sh?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

`testssl.sh` is a free command line tool which checks a server's service on
any port for the support of TLS/SSL ciphers, protocols as well as some
cryptographic flaws.

### Key features

* Clear output: you can tell easily whether anything is good or bad.
* Machine readable output.
* No installation needed: Linux, OSX/Darwin, FreeBSD, NetBSD, MSYS2/Cygwin,  WSL work out of the box. Only OpenBSD needs bash. No need to install  or to configure something.  No gems, CPAN, pip or the like.
* A Dockerfile is provided, there's also an official container @ dockerhub.
* Flexibility: You can test any SSL/TLS enabled and STARTTLS service, not only web servers at port 443.
* Toolbox: Several command line options help you to run *your* test and configure *your* output.
* Reliability: features are tested thoroughly.
* Privacy: It's only you who sees the result, not a third party.
* Freedom: It's 100% open source. You can look at the code, see what's going on.
* The development is open (github) and participation is welcome.

### License

This software is free. You can use it under the terms of GPLv2, see LICENSE.

Attribution is important for the future of this project -- also in the
internet. Thus if you're offering a scanner based on testssl.sh as a public and/or
paid service in the internet you are strongly encouraged to mention to your audience
that you're using this program and where to get this program from. That helps us
to get bugfixes, other feedback and more contributions.

### Compatibility

testssl.sh is working on every Linux/BSD distribution out of the box. Latest by 2.9dev
most of the limitations of disabled features from the openssl client are gone
due to bash-socket-based checks. As a result you can also use any LibreSSL or OpenSSL version
1.1.1 or 3.x. testssl.sh also works on other unixoid systems out of the box, supposed they have
`/bin/bash` >= version 3.2 and standard tools like sed and awk installed. An implicit
(silent) check for binaries is done when you start testssl.sh . System V needs probably
to have GNU grep installed. MacOS X and Windows (using MSYS2, Cygwin or WSL) work too.

### Status

**You are looking at the old stabe version 3.0.10. This is the last version and it will not receive
any updates.** Please migrate ASAP to the stable 3.2 branch!

Update notification for newer versions can be found @ [github](https:/github.com/testssl/testssl.sh) or @ [mastodon](https://infosec.exchange/@testssl) or [bluesky](https://bsky.app/profile/testssl.bsky.social). The [twitter](https://twitter.com/drwetter) account is not being used anymore.

### Installation

You can download this testssl.sh version by cloning this git repository:

    git clone --depth 1 https://github.com/testssl/testssl.sh.git --branch 3.0

For the stable version help yourself by downloading the latest [ZIP](https://github.com/testssl/testssl.sh/releases) from the 3.0.x branch or the latest testssl-3.0.x.tar.gz from [https://testssl.sh](https://testssl.sh/) archive. Just ``cd`` to the directory created (=INSTALLDIR) and run it off there.

#### Docker

Testssl.sh has minimal requirements. As stated you don't have to install or build anything. You can just run it from the pulled/cloned directory. Still if you don't want to pull the github repo to your directory of choice you can pull a container from dockerhub and run it:
```
docker run --rm -ti drwetter/testssl.sh:3.0 <your_cmd_line>
```

Alternatively you can run it from GHCR (GitHub Container Registry which supports more platforms: linux/amd64,linux/386,linux/arm64,linux/arm/v7,linux/arm/v6,linux/ppc64le):


Or if you have cloned this repo you also can just ``cd`` to the INSTALLDIR (change to 3.0, do a git pull) and run
```
docker build . -t drfooimage && docker run --rm -t drfooimage example.com
```

Of course podman works too in the similar way.

For more please consult [Dockerfile.md](https://github.com/testssl/testssl.sh/blob/3.0/Dockerfile.md).

### Documentation

* .. it is there for reading. Please do so :-) -- at least before asking questions. See man page in groff, html and markdown format in `~/doc/`.
* [https://testssl.sh/](https://testssl.sh/) will help to get you started.
* Albeit a bit older Will Hunt provides a longer, good [description](https://www.4armed.com/blog/doing-your-own-ssl-tls-testing/) for the (older) version 2.8, including useful background info.


### Contributing

Contributions are welcome! See [CONTRIBUTING.md](https://github.com/testssl/testssl.sh/blob/3.0/CONTRIBUTING.md) for details.

### Bug reports

Bug reports are important. It makes this project more robust.

Please file bugs in the issue tracker @ github. Do not forget to provide detailed information, see template for issue, and further details @ https://github.com/testssl/testssl.sh/wiki/Bug-reporting. Nobody can read your thoughts -- yet. And only agencies your screen ;-)

You can also debug yourself, see [here](https://github.com/testssl/testssl.sh/wiki/Findings-and-HowTo-Fix-them).

----

### External/related projects

Please address questions not specifically to the code of testssl.sh to the respective projects below.

#### Cool web frontend
* https://github.com/TKCERT/testssl.sh-webfrontend

#### Mass scanner w parallel scans and elastic searching the results
* https://github.com/TKCERT/testssl.sh-masscan

#### Another ready-to-go docker image is at:
* https://quay.io/repository/jumanjiman/testssl

#### Privacy checker using testssl.sh
* https://privacyscore.org

#### pentest2xlsx: generate Excel sheets from CSV
* https://github.com/AresS31/pentest2xlsx (python)

#### Brew package

* see [#233](https://github.com/testssl/testssl.sh/issues/233) and
  [https://github.com/Homebrew/homebrew](https://github.com/Homebrew/homebrew)

#### Daemon for batch execution of testssl.sh command files
* https://github.com/bitsofinfo/testssl.sh-processor

#### Daemon for batch processing of testssl.sh JSON result files for sending Slack alerts, reactive copying etc
* https://github.com/bitsofinfo/testssl.sh-alerts
