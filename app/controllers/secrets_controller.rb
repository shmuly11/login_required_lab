class SecretsController < ApplicationController

    before_action :verify_user

    def show
    end

    private

    def verify_user
        redirect_to '/login' unless !session[:name].nil? && !session[:name].empty?
    end
end
