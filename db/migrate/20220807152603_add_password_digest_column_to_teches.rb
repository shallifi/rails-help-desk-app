class AddPasswordDigestColumnToTeches < ActiveRecord::Migration[7.0]
  def change
    add_column :teches, :password_digest, :string
  end
end
