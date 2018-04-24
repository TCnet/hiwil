class AddUserToEtemplate < ActiveRecord::Migration[5.0]
  def change
    add_reference :etemplates, :user, foreign_key: true
  end
end
