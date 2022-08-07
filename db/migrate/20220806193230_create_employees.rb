class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :department
      t.string :manager
      t.string :title
      t.integer :phone

      t.timestamps
    end
  end
end
