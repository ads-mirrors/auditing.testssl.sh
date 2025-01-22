#!/usr/bin/env perl

# Baseline diff test against testssl.sh (csv output)
#
# This runs a basic test with the supplied openssl vs /usr/bin/openssl

use strict;
use Test::More;
use Data::Dumper;
use Text::Diff;

my $tests = 0;
my $prg="./testssl.sh";
my $check2run="-q --ip=one --color 0 --csvfile";
my $csvfile="tmp.csv";
my $csvfile2="tmp2.csv";
my $cat_csvfile="";
my $cat_csvfile2="";
my $uri="google.com";
my $diff="";
my $distro_openssl="/usr/bin/openssl";

die "Unable to open $prg" unless -f $prg;
die "Unable to open $distro_openssl" unless -f $distro_openssl;

# Provide proper start conditions
unlink "tmp.csv";
unlink "tmp2.csv";

#1 run
printf "\n%s\n", "Diff test IPv4 with supplied openssl against \"$uri\"";
`$prg $check2run $csvfile $uri 2>&1`;

# 2
printf "\n%s\n", "Diff test IPv4 with $distro_openssl against \"$uri\"";
`$prg $check2run $csvfile2 --openssl=$distro_openssl $uri 2>&1`;

$cat_csvfile  = `cat $csvfile`;
$cat_csvfile2 = `cat $csvfile2`;

# Filter for changes that are allowed to occur
$cat_csvfile  =~ s/HTTP_clock_skew.*\n//g;
$cat_csvfile2 =~ s/HTTP_clock_skew.*\n//g;

# HTTP time
$cat_csvfile  =~ s/HTTP_headerTime.*\n//g;
$cat_csvfile2 =~ s/HTTP_headerTime.*\n//g;

#engine_problem
$cat_csvfile  =~  s/"engine_problem.*\n//g;
$cat_csvfile2  =~ s/"engine_problem.*\n//g;

# Nonce in CSP
$cat_csvfile  =~ s/.nonce-.* //g;
$cat_csvfile2 =~ s/.nonce-.* //g;

$diff = diff \$cat_csvfile, \$cat_csvfile2;

# Compare the differences -- and print them if there were any
ok( $cat_csvfile eq $cat_csvfile2, "Check whether CSV outputs match" ) or
     diag ("\n%s\n", "$diff");

unlink "tmp.csv";
unlink "tmp2.csv";

$tests++;
done_testing($tests);
printf "\n";


#  vim:ts=5:sw=5:expandtab

