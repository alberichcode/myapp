class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :validatable

  acts_as_universal_and_determines_account
  acts_as_voter

  has_one :member, :dependent => :destroy
  has_many :user_projects
  has_many :projects, through: :user_projects,:dependent => :delete_all
  has_many :shots, dependent: :destroy
  has_many :comments, dependent: :destroy



end
