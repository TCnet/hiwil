class ChangeForEtemplates < ActiveRecord::Migration[5.0]
  def change
    change_column :etemplates, :isused, :boolean
  end
end
