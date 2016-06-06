class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.text :content
      t.references :category, index: true, foreign_key: true

      t.timestamps :true
    end
  end
end
