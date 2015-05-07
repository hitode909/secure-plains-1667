use strict;
use warnings;

my $app = sub {
    my @queue = qw(生 麦 生 米 生 卵);

    my $content = '';

    while (rand > 0.1) {
        my $char = shift @queue;
        $content .= $char;
        push @queue, $char;
    }

    return [ 200, [ 'Content-Type' => 'text/plain; charset=utf-8' ], [ $content ] ];
};
