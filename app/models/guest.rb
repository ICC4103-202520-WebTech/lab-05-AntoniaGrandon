class Guest < ApplicationRecord
    has_many :reservations

    validates :first_names, presence: true
    validates :last_name, presence: true
    validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :phone, presence: true
    validates :document_id, presence: true, uniqueness: true

    def full
        "#{first_names} #{last_name} #{email} #{phone} #{document_id}"
    end
end