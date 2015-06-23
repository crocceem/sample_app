# == Schema Information
#
# Table name: users
#
#  id                 :integer          not null, primary key
#  nom                :string
#  email              :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  encrypted_password :string
#  salt               :string
#  password_digest    :string
#

require 'digest'

class User < ActiveRecord::Base
  before_save {self.email = email.downcase}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :nom, presence: true, length: {maximum:50}
  validates :email, presence: true, length: {maximum: 255}, format: {with:VALID_EMAIL_REGEX}, uniqueness:{case_sensitive:false}

  has_secure_password
  validates :password, presence: true, length: {minimum: 6}

end
