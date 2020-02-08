class User < ApplicationRecord
  rolify :role_cname => 'Premium'
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :sensor_infos, dependent: :destroy

  def premium?
    self.has_role? :premium
  end
end
