# Hierarchical data in relational databases... SoEasy!

Jay's talk about [Nested Set Theory](https://en.wikipedia.org/wiki/Nested_set_model)
and how to use it via [DBIx::Class::Tree::NestedSet](https://metacpan.org/pod/DBIx::Class::Tree::NestedSet).

## Recommended install

* Use [Perlbrew](perlbrew.pl) (or [plenv](https://github.com/tokuhirom/plenv)) to
manage your perl installs. Using system perl can cause pain. 
* Use the current stable perl because why not? :) 5.22.0 as of this writing. e.g. `perlbrew install 5.22.0`
* Use [cpanm](https://metacpan.org/pod/App::cpanminus) to install CPAN dependencies
* `cpanm DBIx::Class::Tree::NestedSet` should give you the full stack of ORM you need for this talk.

## Rebuilding from scratch

````
cd db
sqlite3 db.sqlite3 < schema.sql
cd ..
script/refresh_schema.pl
````

Add Tree::NestedSet directives to bottom of lib/MyApp/Schema/Result/Taxonomy.pm

All done!  :)


