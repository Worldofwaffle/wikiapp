class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable, :confirmable
  has_many :wikis
  has_many :collaborations
  has_many :cowikis, through: :collaborations, source: :wiki
  
 def admin?
   role == 'admin'
 end
 
 def moderator?
   role == 'moderator'
 end
  
  
end
