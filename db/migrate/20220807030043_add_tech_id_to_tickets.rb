class AddTechIdToTickets < ActiveRecord::Migration[7.0]
  def change
    add_column :tickets, :tech_id, :integer
  end
end
