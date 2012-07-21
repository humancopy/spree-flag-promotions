# Flag Promotions

Supporting Spree >= 1.1.2


Inspired by http://guides.spreecommerce.com/creating_extensions.html#extension-tutorial


## Description

This extension adds a Promoted Items tag to the admin interface.

Following enhancements are provided:

* Admin side:
  * Creating a promotion for a product to be highlighted.
  * Optional description
  * Optional valid dates (start & end)
  * Optional background image
  * An image for the promotion


## Installation

Add the following to your Gemfile

    gem "spree_flag_promotions", :git => "git@github.com:mez/spree-flag-promotions.git"

Run:

    bundle install

Copy over migrations via the rake task:

    rails g spree_flag_promotions:install -f

Run the migrations:

    bundle exec rake db:migrate

## Usage
**Work in progress :)**

Most simple use is to just call all promoted items for display:

```
# Get valid promoted items, sorted by position 
promoted_items = PromotedItem.valid.sorted
```

Copyright (c) 2011 humancopy.net, released under the New BSD License
