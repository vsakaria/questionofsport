class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :comment, :presence => true
      t.boolean :answer, :inclusion => {:in => [true, false]}
      t.integer :rightanswers
      t.integer :wronganswers
      t.integer  :user_id

      t.timestamps
    end
  end
end
