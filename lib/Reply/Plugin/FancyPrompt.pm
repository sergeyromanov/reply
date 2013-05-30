package Reply::Plugin::FancyPrompt;
use strict;
use warnings;

use base 'Reply::Plugin';

sub new {
    my $class = shift;
    my $self = $class->SUPER::new(@_);
    $self->{counter} = 0;
    return $self;
}

sub prompt {
    my $self = shift;
    my ($next) = @_;
    return $self->{counter} . $next->();
}

sub loop {
    my $self = shift;
    $self->{counter}++;
}

1;
