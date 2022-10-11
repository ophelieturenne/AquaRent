class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # validates :email, presence: true, format: { with: /^(.+)@(.+)\.(.+)$/, message: "Email invalid" }, uniqueness: { case_sensitive: false }
  # validates :encrypted_password, uniqueness: true

end
