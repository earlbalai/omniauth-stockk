# OmniAuth Stockk

This gem contains the StockkID strategy for OmniAuth.

## Before You Begin

You should have already installed OmniAuth into your app; if not, read the [OmniAuth README](https://github.com/omniauth/omniauth) to get started.

Now sign in into the [StockkID developer area](https://dev.withstockk.com/apps) and create an application. Take note of your APP_ID and APP Secret because that is what your web application will use to authenticate against the Stockk API. Make sure to set a callback URL or else you may get authentication errors. (It doesn't matter what it is, just that it is set.)

## Using This Strategy

First start by adding this gem to your Gemfile:

```ruby
gem 'omniauth-stockk'
```

If you need to use the latest HEAD version, you can do so with:

```ruby
gem 'omniauth-stockk', :github => 'earlbalai/omniauth-stockk'
```

Next, tell OmniAuth about this provider. For a Rails app, your `config/initializers/omniauth.rb` file should look like this:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, "API_KEY", "API_SECRET"
end
```

Replace `"STOCKK_APP_ID"` and `"STOCKK_APP_SECRET"` with the appropriate values you obtained [earlier](https://dev.withstockk.com/apps).
