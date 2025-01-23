
### Contributing / participating

Contributing / participating is always welcome!

Please note the following:

* Please read at least the [coding convention](https://github.com/testssl/testssl.sh/blob/3.2/Coding_Convention.md).
* One pull request per feature or bug fix or improvement. Please do not mix issues.
* Document your pull request, both in the pull request and/or commit message and in the code.
* Please test your changes thoroughly as reliability is important for this project. You may want to check different servers with different settings.
* GitHub Actions runs automatically when anything is committed. You should check any complains from GitHub Actions. Beforehand you can check with `prove -v`.
* If it's a new feature, please consider writing a unit test for it. You can use e.g. `t/20_baseline_ipv4_http.t` as a template. The general documentation for [Test::More](https://perldoc.perl.org/Test/More.html) is a good start.
* If it's a new feature, it would need to be documented in the appropriate section in `help()` and in `~/doc/testssl.1.md`

For the questions, just open an issue.
