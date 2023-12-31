<a name="readme-top"></a>
<!-- PROJECT LOGO -->
<br />

### Built With

This section should list any major frameworks/libraries used to bootstrap your project. Leave any add-ons/plugins for the acknowledgements section. Here are a few examples.

* [![Bootstrap][Bootstrap.com]][Bootstrap-url]

## Frameworks and libraries

[Active Record], [Active Model], [Action Pack], and [Action View] can each be used independently outside Rails.

In addition to that, Rails also comes with:

- [Action Mailer], a library to generate and send emails

## Dependencies or Bundles Installed

1. Add `rspec-rails` `letter_opener` `factory_bot_rails` `faker` to **both** the `:development` and `:test` groups
   of your app’s `Gemfile`:

    ```ruby
    # Run against this stable release
    group :development, :test do
        gem 'letter_opener'
        gem 'rspec-rails'
        gem 'factory_bot_rails'
        gem 'faker'
    end
    ```

2. Then, in your project directory:

    ```sh
    # Download and install
    $ bundle install
    ```

## Getting Started

1. Install Rails at the command prompt if you haven't yet:

        $ gem install rails

2. At the command prompt, create a new Rails application:

        $ rails new myapp

   where "myapp" is the application name.

3. Change directory to `myapp` and start the web server:

        $ cd myapp
        $ rails s

   Run with `--help` or `-h` for options.

4. Go to `http://127.0.0.1:3000` and you'll see the Rails bootscreen with your Rails and Ruby versions.

## How to RUN

1. Run database migration:

        $ rails db:migrate

        $ bin/rails db:migrate RAILS_ENV=test

2. Create dummy data (optional)

        $ rails db:seed

3. Run the server

        $ rails s

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[Bootstrap.com]: https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white
[Bootstrap-url]: https://getbootstrap.com