class User < ApplicationRecord
  has_many :user_projects
  has_many :projects, through: :user_projects

  def self.from_omniauth(response)
    User.find_or_create_by(uid: response[:uid], provider: response[:provider]) do |user|
      user.name = response[:info][:name]
      user.email = response[:info][:email]
    end
  end
end
