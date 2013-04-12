class User < ActiveRecord::Base

  attr_accessible  :name, :email, :password, :provider, :uid
  attr_accessor :user_id

  validates :name, :presence => true

  has_many :comments
  has_many :answers

  def self.from_omniauth(auth)
    where(auth.slice("provider","uid")).first || create_from_omniauth(auth)
  end

  def self.create_from_omniauth(auth)
    self.create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
    end
  end

end
