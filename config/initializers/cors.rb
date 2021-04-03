# Whitelist certain domains. Because cookies will be transmitted between front/back end, a tool like cors gives a specific set of rules for them to do so
# If a request comes from a non-whitelisted website, the backend will not coordinate with such requests
Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
        origins 'http://localhost:3000'
        # Allows to pass cookies to and from frontend to backend.
        resource "*", headers: :any, methods: [:get,:post,:put,:patch,:delete,:options,:head], credentials: true
    end

    allow do
        origins 'http://jlp-authentication-app-react.herokuapp.com'
        # Allows to pass cookies to and from frontend to backend.
        resource "*", headers: :any, methods: [:get,:post,:put,:patch,:delete,:options,:head], credentials: true
    end
end