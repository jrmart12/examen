class User < ApplicationRecord
	extend Devise::Models
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    has_many :locations
  has_many :recordings

  validates :name, presence: true, length: { maximum: 50 }       
end
