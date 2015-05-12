# Geoloc

Geoloc allows you to add HTML5 Geolocation in your views without dealing with javascript. Geoloc offers customizable helper methods to add custom geolocation requests that can later send back the coordinates to your server

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'geoloc'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install geoloc

## Usage

Simple button with post request

```erb
<%= get_geoloc_button route, id, message %>
```

Where route is the route where the javascript will submit the post request with the coordinates,
id is the id of the html element that is gonna output the server response and message is the button text (id and message are optional).



```erb
<%= get_geoloc_onload route, id %>
```

Submits a post requests with the coordinates after loading the window, without any user interaction

Where route is the route where the javascript will submit the post request with the coordinates,
id is the id of the html element that is gonna output the server response (id is optional).

Add coordinates to form

```erb
<%= get_geoloc_form %>
```

This helper adds the coordinates to a form with hidden_fields with ids :geoloc_latitude, and :geoloc_longitude. Those parameters get sent to the server when the user submits the form. Id's of the hidden_fields must match the previous.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/legendss/geoloc/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
