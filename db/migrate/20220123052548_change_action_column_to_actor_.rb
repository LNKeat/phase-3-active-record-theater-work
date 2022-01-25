class ChangeActionColumnToActor < ActiveRecord::Migration[5.2]
  def change
    rename_column :auditions, :action, :actor
  end
end
