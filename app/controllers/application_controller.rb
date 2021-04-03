class ApplicationController < ActionController::Base
    # rails has a set of rules when communicating with route. an esrf token is generated and secured by secret key-value to ensure a user of the application is actually a real user. Not needed in a rails api
    skip_before_action :verify_authenticity_token
end
