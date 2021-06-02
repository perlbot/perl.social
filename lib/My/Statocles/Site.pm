package My::Statocles::Site;

use parent 'Statocles::Site';
use Statocles::Base 'Class';

package My::Statocles::Markdent::Compat {
  use Moo;
  use Markdent; 
  use Markdent::Simple::Fragment;
  use Data::Dumper;

  sub markdown {
    my ($self, $markdown, @options) = @_;
    # We're going to ignore all options
    my $md = Markdent::Simple::Fragment->new();
    my $output = $md->markdown_to_html(
      markdown => $markdown,
      dialects => ['GitHub', 'Theory'],
    );

    return $output;
  }
};

has '+markdown' => (
    default => sub { My::Statocles::Markdent::Compat->new() }
);

1;
