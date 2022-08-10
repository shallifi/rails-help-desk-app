class ApplicationController < ActionController::API
    include ActionController::Cookies
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
    
    before_action :authorize

    def hello_world
        session[:count] = (session[:count] || 0) + 1
        render json: { count: session[:count] }
    end

    # def current_user
    #   Tech.find_by(id: session[:tech_id])
    # end

    # def authorized_user
    #     return render json: {error: "Not Authorized"}, status: :unauthorized unless current_user
    # end
  
    private
    def authorize
      # render json: session[:tech_id]
      @current_tech = Tech.find_by(id: session[:tech_id])
      
       render json: { error: ["Not authorized"] }, status: :unauthorized unless @current_tech
      
    end
  
  
    def render_unprocessable_entity_response(exception)
      render json: { error: exception.record.errors.full_messages }, status: :unprocessable_entity
    end
end
