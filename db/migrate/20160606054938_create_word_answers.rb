class CreateWordAnswers < ActiveRecord::Migration
  def change
    create_table :word_answers do |t|
      t.boolean :correct, default: false
      t.text :content
      t.references :word, index: true, foreign_key: true

      t.timestamps :true
    end
  end
end
