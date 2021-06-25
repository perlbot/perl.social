package My::Statocles::CNAME;

use Statocles::Base 'Class';
with 'Statocles::App';
use Statocles::Page::Plain;

sub pages {
    return Statocles::Page::Plain->new(
        path => '/CNAME',
        content => $ENV{CNAME},
    );
  }

1;
