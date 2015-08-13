#! env perl 

use 5.22.0;
use MyApp::Schema;

my $schema = MyApp::Schema->connect('dbi:SQLite:dbname=db/db.sqlite3');

my $roots_rs = $schema->resultset('Taxonomy')->search({
  level => 0,
});
while (my $root = $roots_rs->next) {
  say $root->name;
  _print_children($root, 2);
}

sub _print_children {
  my ($node, $offset) = @_;
  foreach my $c ($node->children) {
    print " " x $offset;
    printf("%s\n", $c->name);
    _print_children($c, $offset + 2) if $c->is_branch;
  }
}

