# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


Step 1: create rails backend without --api. Some sessions dependencies are not included in initial --api build of rails
Step 2: add cors.rb, and session_store to config/initializers
    - in order to work with the session and allow credentials, cors must be added as middleware
    
    cors.rb file...
    * in the cors.rb file, write:
        Rails.application.config.middleware.insert_before 0, Rack::Cors
    - This line inserts the following code into middle and uses cors to create it. All the rules placed inside this file will be intercepted by the rails config at the beginning

    - Create two "allows"
        One for the development frontend
        And the other for the production domain. This may be hosted on heroku and have a heroku domain

    session_store.rb file...
    * in the session_store file, write:
        Rails.application.config.session_store :cookie_store, key: "_auth_app", domain: "<domain name>"
    "key" is the name of the session cookie. The standard convention is to start with an underscore
    "domain" would be the name of the domain that the application is sources in. Could be a heroku domain
Step 3: add user model. has_secure_password, and validation
Step 4: add sessions_controller and create action. action will check for user with email passed and authenticates password.
    - if user login successful, pass back :status, :logged_in, and user object
Step 5: add resources to routes.rb file. :sessions, :registrations
Step 6: add registrations_controller.rb. registration controller action :create will have similar to :create in sessions controller
Step 7: add a delete and get for sessions login/logout