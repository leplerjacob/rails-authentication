# Place the api application source or url for the application in the domain
Rails.application.config.session_store :cookie_store, key: "_auth_app", domain: "jlp-auth-app-api.herokuapp.com"