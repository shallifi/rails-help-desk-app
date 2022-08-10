class SessionsController < ApplicationController
    skip_before_action :authorize, only: :create

    def create
      tech = Tech.find_by(username: params[:username])
      if tech&.authenticate(params[:password])
        session[:tech_id] = tech.id
        render json: tech, status: :ok
      else
        render json: { error: ["Invalid username or password"] }, status: :unauthorized
      end
    end
  
    def destroy
      session.delete :tech_id
      head :no_content
    end
end
