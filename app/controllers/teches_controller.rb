class TechesController < ApplicationController

    def index 
        tech = Tech.all
        render json: tech
    end

end
