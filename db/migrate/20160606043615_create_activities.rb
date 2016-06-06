class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.integer :target_id
      t.integer :action_type
      t.references :user, index: true, foreign_key: true

      t.timestamps :true
    end
  end
end
