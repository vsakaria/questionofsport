class ChangeAnswerToInput < ActiveRecord::Migration
  def up
    rename_column :answers, :answer, :input
  end

  def down
    rename_column :answers, :input, :answer
  end
end
