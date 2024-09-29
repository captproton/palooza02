# Palooza02

Palooza02 is a Rails engine that allows users to create and manage "paloozas," which are similar to blog posts. It provides a simple and flexible way to add a blogging-like functionality to your Rails application.

## Features

- Create, read, update, and delete paloozas
- Customizable views and styling
- Easy integration with existing Rails applications

## Installation

Add this line to your application's Gemfile:

gem "palooza02"


And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install palooza02
```

After installing the gem, run the installation generator:

```bash
$ rails generate palooza02:install
```

This will:
- Copy the initializer file to your application
- Mount the Palooza02 engine in your routes file

Finally, run the migrations:

```bash
$ rails palooza02:install:migrations
$ rails db:migrate
```

## Usage

After installation, you can access the paloozas at `/paloozas` in your application. Here are some key features:

- View all paloozas: `/paloozas`
- Create a new palooza: `/paloozas/new`
- View a specific palooza: `/paloozas/:id`
- Edit a palooza: `/paloozas/:id/edit`

You can customize the appearance and behavior of Palooza02 by overriding its views, controllers, and models in your main application.

## Configuration

You can configure Palooza02 in the initializer file created by the install generator (`config/initializers/palooza02.rb`):

```ruby
Palooza02.setup do |config|
  # Add your configuration options here
end
```

## Customization

To customize the views, you can copy them to your main app:

```bash
$ rails generate palooza02:views
```

This will copy all views into `app/views/palooza02/` in your main app, where you can modify them.

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

Please make sure to update tests as appropriate.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
