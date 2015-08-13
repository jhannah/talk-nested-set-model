# Hierarchical data in relational databases... SoEasy!

Jay's talk about [Nested Set Theory](https://en.wikipedia.org/wiki/Nested_set_model)
and how to use it via [DBIx::Class::Tree::NestedSet](https://metacpan.org/pod/DBIx::Class::Tree::NestedSet).

## Rebuilding from scratch

````
cd db
sqlite3 db.sqlite3 < schema.sql
cd ..
script/refresh_schema.pl
````

Add Tree::NestedSet directives to bottom of lib/MyApp/Schema/Result/Taxonomy.pm

All done!  :)


