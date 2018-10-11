# unDraw rubygem

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

```ruby
<%= undraw("features_overview", color: "#3f51b5", size: "350*150") %>

<%= undraw("features_overview", color: "#ff6347", id: "undraw-features-overview") %>

<%= undraw("features_overview", color: "#ff6347", class: "undraw-features-overview") %>
```

## Development



## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mkhairi/undraw. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Undraw project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/mkhairi/undraw/blob/master/CODE_OF_CONDUCT.md).
