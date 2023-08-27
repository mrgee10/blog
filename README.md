<a name="readme-top"></a>
<!-- PROJECT LOGO -->
<br />

## Frameworks and libraries

[Active Record], [Active Model], [Action Pack], and [Action View] can each be used independently outside Rails.

In addition to that, Rails also comes with:

- [Action Mailer], a library to generate and send emails

## Dependencies or Bundles Installed

1. Add `rspec-rails` to **both** the `:development` and `:test` groups
   of your app’s `Gemfile`:

    # Run against this stable release
    group :development, :test do
        gem 'rspec-rails', '~> 6.0.0'
    end

2. Then, in your project directory:

    # Download and install
    $ bundle install

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