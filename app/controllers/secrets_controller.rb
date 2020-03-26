class SecretsController < ApplicationController
    before_action :check_login

    def show
        if !check_login then
            redirect_to "/login"
        end
    end

    def check_login
        return current_user
    end
end