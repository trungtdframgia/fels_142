class CreateLessonWords < ActiveRecord::Migration
  def change
    create_table :lesson_words do |t|
      t.references :lesson, index: true, foreign_key: true
      t.references :word, index: true, foreign_key: true
      t.references :word_answer, index: true, foreign_key: true

      t.timestamps :true
    end
  end
end
