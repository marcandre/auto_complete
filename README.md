# AutoComplete

Gem port of the legacy auto_complete plugin for Rails 3+

## Example

Add this line to your application's Gemfile:Example:

  # Controller
  class BlogController < ApplicationController
    auto_complete_for :post, :title
  end

  # View
  <%= text_field_with_auto_complete :post, title %>

By default, auto_complete_for limits the results to 10 entries,
and sorts by the given field.

auto_complete_for takes a third parameter, an options hash to
the find method used to search for the records:

  auto_complete_for :post, :title, :limit => 15, :order => 'created_at DESC'

For more examples, see script.aculo.us:
* http://script.aculo.us/demos/ajax/autocompleter
* http://script.aculo.us/demos/ajax/autocompleter_customized

Copyright (c) 2007 David Heinemeier Hansson, released under the MIT license

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
