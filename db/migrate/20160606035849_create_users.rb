class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, limit: 40
      t.string :email, unique: true, limit: 50
      t.boolean :is_admin, default: false
      t.string :img_url

      t.timestamps :true
    end
    add_column :users, :password_digest, :string
  end
end
