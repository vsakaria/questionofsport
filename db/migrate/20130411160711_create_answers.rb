class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :comment_id
      t.integer :user_id
      t.boolean :answer

      t.timestamps
    end
  end
end
