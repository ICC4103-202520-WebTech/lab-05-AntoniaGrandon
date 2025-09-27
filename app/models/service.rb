class Service < ApplicationRecord
    has_many :service_usages, dependent: :restrict_with_error

    validates :name, presence: true, uniqueness: true
    validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
    validates :is_active, inclusion: { in: [true, false] }

    def full
        "#{name} #{price} #{is_active}"
    end
end