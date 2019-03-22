# unDraw rubygem [![Gem Version](https://badge.fury.io/rb/undraw.svg)](http://badge.fury.io/rb/undraw)

Embed SVG illustrations by [unDraw.io](https://undraw.co/illustrations) for your rails projects

![screenshot](https://user-images.githubusercontent.com/7901659/46782215-ff11b700-cd57-11e8-9bdc-e417053d7189.png)
## Installation

Add this line to your application's Gemfile:

```ruby
gem 'undraw'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install undraw

## Usage

Browse to find the [images](https://undraw.co/illustrations) that fit your needs. Take advantage of the on-the-fly color image generation to match your brand identity.

**hint: downcase the svg title and replace space with underscore. eg: `Features Overview` to `features_overview`

```ruby
# default color
<%= undraw("features_overview") %>
```

```ruby
# set size 
<%= undraw("features_overview", color: "#3f51b5", size: "350*150") %>
```

```ruby
# set id
<%= undraw("building", color: "#ff6347", id: "undraw-building") %>
```

```ruby
# set class
<%= undraw("designer_life", color: "#ff6347", class: "undraw-designer-life") %>
```

**Note:
    
    
This gem will often update assets perhaps weekly. You need to manually update your installed gem to support new svg released.
 
    $ bundle update undraw
    

DEMO: http://materialize.labs.my/undraw
## Development



## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mkhairi/undraw. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Undraw project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/mkhairi/undraw/blob/master/CODE_OF_CONDUCT.md).
