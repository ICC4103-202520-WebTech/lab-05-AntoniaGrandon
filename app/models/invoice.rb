class Invoice < ApplicationRecord
    belongs_to :reservation

    validates :reservation, presence: true
    validates :nights_subtotal, presence: true, numericality: { greater_than_or_equal_to: 0 }
    validates :services_subtotal, presence: true, numericality: { greater_than_or_equal_to: 0 }
    validates :tax, presence: true, numericality: { greater_than_or_equal_to: 0 }
    validates :total, presence: true, numericality: { greater_than_or_equal_to: 0 }
    validates :issued_at, presence: true
    validates :status, presence: true
end