# email:string
# password_digest:string
#
# password:string virtual
# password_confirmation:string virtual


class User < ApplicationRecord
  has_secure_password # function to hash password

  # validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/ , message:  "Must be a valid email address"} # email as required field
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP , message:  "Must be a valid email address"} # email as required field
end
