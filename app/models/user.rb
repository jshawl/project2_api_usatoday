class User < ActiveRecord::Base
  has_many :places
  has_one :profile, dependent: :destroy
  # nice use of dependent: :destroy!
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
