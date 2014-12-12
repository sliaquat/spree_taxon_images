SpreeTaxonImages
================

Spree commmerce extension that allows adding of multiple images to a taxon and exposes them on the api

Installation
------------

Add spree_taxon_images to your Gemfile:

```ruby
gem 'spree_taxon_images'
```

Bundle your dependencies and run the installation generator:

```shell
bundle
bundle exec rails g spree_taxon_images:install
```


Usage
-----

There is an "Images" button on the admin Taxons edit page. Use that to upload multiple images for a taxon. The images are also exposed through the api on:
 
/api/taxons
/api/taxonomies/1/taxons

Copyright (c) 2014 Sanad Liaquat, released under the New BSD License
