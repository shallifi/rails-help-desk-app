class EmployeesController < ApplicationController
    # skip_before_action :authorize, only: [:index]
    def index 
        employee = Employee.all
        render json:  employee
    end

    # def show
    #     employee = Employee.find(params[:id])
    #     render json: employee, status: :ok
    # end 

    def create
        employee = Employee.create!(employee_params)
        render json: employee, status: :created
    end

    private
    def employee_params
        params.permit(:name, :department, :manager, :title, :phone)
    end 

end
