#!/usr/bin/env perl    
use strict;
use warnings;
use Net::Ping;

my @hosts = @ARGV;
die "usage: sudo perl ping.pl host\n" unless @ARGV;

my $timeout = 5;
my @proto = ("tcp", "udp", "icmp","syn");
foreach my $pro ( @proto ) {

    my $p = Net::Ping->new($pro);

    # default port    
    my $port = 7;
    $p->port_number($port);

    # tcp on https port
    if ( $pro eq "tcp"){
      $port = 443;
      $p->port_number($port);
    }

    print "\nProtocol $pro port $port\n";
    foreach my $host( @hosts ) {    
      if ($p->ping($host, $timeout)){
        print "$host is reachable\n";
      }
      else{
        print "$host is NOT reachable\n";
      }
    }
    $p->close();
    sleep(2);
}
exit;
