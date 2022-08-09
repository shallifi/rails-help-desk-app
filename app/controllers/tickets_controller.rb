class TicketsController < ApplicationController
    skip_before_action :authorize, only: [:create]
    def index 
        tickets = Ticket.all
        render json: tickets
    end

    def show
        ticket = Ticket.find(params[:id])
        render json: ticket, status: :ok
    end 

    def create
        ticket = Ticket.create!(ticket_params)
        render json: ticket, status: :created
    end

    
    def update
        ticket = find_ticket
        ticket.update!(ticket_params)
        render json: ticket, status: :accepted
    end 


    def destroy
        ticket = find_ticket
        ticket.destroy
        head :no_content
    end 
    
    private 

    def find_ticket
        Ticket.find_by(id: params[:id])
    end

    def ticket_params
        params.permit(:name, :common_issues, :devices, :description)
    end 

end
