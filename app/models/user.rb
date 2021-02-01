class User < ApplicationRecord
    validates :username, :email, :password, presence: true
    validates :password, length: { in: 8..20 }
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
