class User < ApplicationRecord
  has_secure_password

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

  validates :email,
            presence: true,
            # format: {
            #   with: /\A[^@\s]+@[^@\s]+\z/,
            #   message: "Must be a valid email address"
            # },
            format: {
              with: VALID_EMAIL_REGEX
            },
            uniqueness: {
              case_sensitive: false
            }
end
