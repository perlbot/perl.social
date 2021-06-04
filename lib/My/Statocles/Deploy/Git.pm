package My::Statocles::Deploy::Git;

use strict;
use warnings;

BEGIN {
  open(my $fh, "<", "../.env");
  my $data = do {local $/; <$fh>};

  use Data::Dumper;
  chomp $data;

  my %loaded_env = map {split /=/, $_, 2}(split /\n/, $data);

  %ENV=(%ENV, %loaded_env);
}

use Statocles::Base 'Class';
extends 'Statocles::Deploy::Git';
has '+branch' => (
    default => sub { $ENV{PUBLISH_BRANCH} // "gh_pages" }

);

1;
