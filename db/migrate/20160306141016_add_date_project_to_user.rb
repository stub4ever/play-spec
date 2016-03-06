class AddDateProjectToUser < ActiveRecord::Migration
  def change
    add_column :users, :date_project, :date
  end
end
