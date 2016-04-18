class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # :recoverable, :trackable, :rememberable,

  devise :database_authenticatable, :registerable, :validatable

  validates :email, :password, presence: true
  validates :email, uniqueness: true
  
end
