class AddForeignKeys < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :members, :tenants
    add_foreign_key :members, :users
    add_foreign_key :projects, :tenants
    add_foreign_key :tenants, :tenants
    add_foreign_key :user_projects, :projects
    add_foreign_key :user_projects, :users
  end
end
