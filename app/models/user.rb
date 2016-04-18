class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # :recoverable, :trackable, :rememberable,

  devise :database_authenticatable, :registerable, :validatable
  
end
