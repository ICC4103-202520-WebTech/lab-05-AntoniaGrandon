class Room < ApplicationRecord
    has_many :reservations, dependent: :restrict_with_error

    validates :number, presence: true, uniqueness: true
    validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
    validates :room_type, presence: true
    validates :status, presence: true

    def full
        "#{number} #{room_type} #{price} #{status}"
    end
end
