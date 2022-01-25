class AddColumnsToAuditions < ActiveRecord::Migration[5.2]
  def change
    add_column :auditions, :phone, :string
    add_column :auditions, :hired, :boolean
    add_column :auditions, :role_id, :integer
  end
end
