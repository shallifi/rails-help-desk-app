class AddNameColumnToTickets < ActiveRecord::Migration[7.0]
  def change
    add_column :tickets, :name, :string
  end
end
