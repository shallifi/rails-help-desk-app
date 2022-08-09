class TechesController < ApplicationController
    skip_before_action :authorize, only: [:create, :index]

    def index 
        tech = Tech.all
        render json: tech
    end

    def create 
        tech = Tech.create!(tech_params)
        session[:tech_id] = tech.id
        render json: tech, status: :created
    end

    def show
        tech = Tech.find(session[:tech_id])
        render json: @current_tech
    end

    private

    def tech_params
        params.permit(:username, :email, :password, :password_confirmation)
    end

end
