use utf8;
package MyApp::Schema::Result::Taxonomy;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

MyApp::Schema::Result::Taxonomy

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<taxonomies>

=cut

__PACKAGE__->table("taxonomies");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 root_id

  data_type: 'integer'
  is_nullable: 1

=head2 lft

  data_type: 'integer'
  is_nullable: 0

=head2 rgt

  data_type: 'integer'
  is_nullable: 0

=head2 level

  data_type: 'integer'
  is_nullable: 0

=head2 name

  data_type: 'text'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "root_id",
  { data_type => "integer", is_nullable => 1 },
  "lft",
  { data_type => "integer", is_nullable => 0 },
  "rgt",
  { data_type => "integer", is_nullable => 0 },
  "level",
  { data_type => "integer", is_nullable => 0 },
  "name",
  { data_type => "text", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07043 @ 2015-08-13 08:52:30
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:HxPz5oAd1HBfjBrlIu3vUw

__PACKAGE__->load_components(qw( Tree::NestedSet ));
__PACKAGE__->tree_columns({
    root_column     => 'root_id',
    left_column     => 'lft',
    right_column    => 'rgt',
    level_column    => 'level',
});

# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
