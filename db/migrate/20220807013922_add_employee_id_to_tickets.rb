class AddEmployeeIdToTickets < ActiveRecord::Migration[7.0]
  def change
    add_column :tickets, :employee_id, :integer
  end
end
