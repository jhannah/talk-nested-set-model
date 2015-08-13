# Hierarchical data in RDBMS... SoEasy!

Jay's talk about [nested set model](https://en.wikipedia.org/wiki/Nested_set_model)
featuring [DBIx::Class::Tree::NestedSet](https://metacpan.org/pod/DBIx::Class::Tree::NestedSet).

## Recommended install

* Use [Perlbrew](perlbrew.pl) (or [plenv](https://github.com/tokuhirom/plenv)) to
manage your perl installs. Using system perl can cause pain. 
* Use the current stable perl because... why not? :) e.g. `perlbrew install 5.22.0`
* Use [cpanm](https://metacpan.org/pod/App::cpanminus) to install CPAN dependencies
* `cpanm DBIx::Class::Tree::NestedSet` should give you the full stack you need to run the `scripts/` in this talk.

## Rebuilding from scratch

````
sqlite3 db/db.sqlite3 < db/schema.sql
script/refresh_schema.pl
````

Add Tree::NestedSet directives to bottom of lib/MyApp/Schema/Result/Taxonomy.pm

All done!  :)


