class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :comment
      t.boolean :answer
      t.integer :rightanswers
      t.integer :wronganswers
      t.integer  :user_id

      t.timestamps
    end
  end
end
