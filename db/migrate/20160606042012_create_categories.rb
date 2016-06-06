class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name, limit: 100
      t.text :description

      t.timestamps :true
    end
  end
end
