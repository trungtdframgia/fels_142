class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.boolean :result, default: false
      t.references :user, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true

      t.timestamps :true
    end
  end
end
