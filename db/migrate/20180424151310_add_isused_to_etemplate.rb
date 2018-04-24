class AddIsusedToEtemplate < ActiveRecord::Migration[5.0]
  def change
    add_column :etemplates, :isused, :bool
  end
end
