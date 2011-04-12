class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  
  has_many :students, :foreign_key => :registered_by
  
  validates_presence_of :first_name, :last_name
  
  def full_name
    (first_name || "") + " " + (last_name || "")
  end
end
