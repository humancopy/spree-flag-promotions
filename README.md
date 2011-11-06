# Flag Promotions

Supporting Spree >= 0.70.x

For Spree 0.60.x see the [0_60_stable branch](branches/0-60-stable)

Inspired by http://spreecommerce.com/documentation/extensions.html#extension-tutorial


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

    gem "spree_flag_promotions"

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
