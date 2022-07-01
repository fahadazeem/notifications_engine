# Notification Engine
Notification engine that is used in the web application to send personal notifications to the single user or multiple users.

## Installation

### Local Setup

#### Step 1
- clone the notification_engine
- `cd notification_engine`
- `bundle install`

#### Step 2
Now make a rails application and add this line to your application's Gemfile:

```ruby
gem "notification_engine", path: './notification_engine'
```

#### Step 3
- go to application
- add these lines to your application's Gemfile
- `gem 'devise'`
- `gem 'cancancan'`
- `gem 'rolify'`
- `gem 'acts_as_paranoid'`
- run `bundle install`
- run `bin/rails notification_engine:install:migrations`
- run `rails db:prepare`

#### Step 4
Add this line to your application's routes.rb
`mount NotificationEngine::Engine => '/notification_engine'`

#### Step 5
You must logged in to use notification engine, after login you can go to this link to access notifications

`your-domain.com/notification_engine/notifications`

### Production Setup
Add this line to your application's Gemfile:

```ruby
gem "notification_engine"
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install notification_engine
```

And follow to step 3 to step 5

