class Answer < ActiveRecord::Base
  attr_accessible :input, :comment_id, :user_id

  belongs_to :comment
  belongs_to :user

end
