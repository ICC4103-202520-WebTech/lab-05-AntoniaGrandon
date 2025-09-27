class ServiceUsage < ApplicationRecord
    belongs_to :reservation
    belongs_to :service

    validates :reservation, presence: true
    validates :service, presence: true
    validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }
    validates :used_at, presence: true
end