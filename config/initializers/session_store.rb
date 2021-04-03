# Place the api application source or url for the application in the domain

# make initailizer dynamic depending on environment
if Rails.env == 'production'
    Rails.application.config.session_store :cookie_store, key: "_auth_app", domain: "jlp-auth-app-api.herokuapp.com"
else
    Rails.application.config.session_store :cookie_store, key: "_auth_app"
end