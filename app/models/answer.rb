class Answer < ActiveRecord::Base
  attr_accessible :answer, :comment_id, :user_id
  attr_accessor :user_id, :comment_id

  belongs_to: :comment, :user
end
