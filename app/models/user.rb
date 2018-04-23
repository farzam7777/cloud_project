class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable,
         :omniauth_providers => [:facebook, :google_oauth2]

  has_many :user_provider, :dependent => :destroy

  scope :google_users, ->  { joins(:user_provider).where('user_providers.provider = ?', 'google_oauth2') }
  scope :facebook_users, ->  { joins(:user_provider).where('user_providers.provider = ?', 'facebook') }
	scope :site_users, ->  { left_outer_joins(:user_provider).where('user_providers.provider is null') }
end
