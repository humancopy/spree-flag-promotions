# Flag Promotions

Supporting Spree >= 0.60.x

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

    bundle exec rake railties:install:migrations FROM=spree_flag_promotions

Run the migrations:

    bundle exec rake db:migrate

Copyright (c) 2011 humancopy.net, released under the New BSD License
