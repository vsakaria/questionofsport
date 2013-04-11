class Comment < ActiveRecord::Base
  attr_accessible :answer, :comment, :rightanswers, :wronganswers, :user_id

  validates :answer, :inclusion => {:in => [true, false]}
  validates :comment, :presence => true

  belongs_to :user
end
