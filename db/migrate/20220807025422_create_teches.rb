class CreateTeches < ActiveRecord::Migration[7.0]
  def change
    create_table :teches do |t|
      t.string :username
      
      t.timestamps
    end
  end
end
