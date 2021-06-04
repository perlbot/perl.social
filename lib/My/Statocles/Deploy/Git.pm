package My::Statocles::Deploy::Git;

use Statocles::Base 'Class';
extends 'Statocles::Deploy::Git';
has '+branch' => (
    default => sub { $ENV{PUBLISH_BRANCH} // "gh_pages" }

);

1;
