class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true
  validates_length_of :password, minimum: 6
  validates :profile, presence: true
  validates :occupation, presence: true
  validates :position, presence: true
  has_many :comment
  has_many :prototypes
end
