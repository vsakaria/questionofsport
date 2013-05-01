class Comment < ActiveRecord::Base
  attr_accessible :answer, :comment, :rightanswers, :wronganswers, :user_id
  attr_accessor :comment_id

  validates :answer, :inclusion => {:in => [true, false]}
  validates :comment, :presence => true

  belongs_to :user
  has_many :answers

  def self.get_random_comment
       firstcomment = Comment.first.id
       lastcomment = Comment.last.id

      Comment.find(rand(firstcomment..lastcomment))
  end
end