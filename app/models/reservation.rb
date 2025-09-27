class Reservation < ApplicationRecord
    belongs_to :guest
    belongs_to :room

    has_many :service_usages, dependent: :destroy 
    has_one :invoice, dependent: :destroy

    validates :guest, presence: true
    validates :room, presence: true
    validates :code, presence: true, uniqueness: true
    validates :check_in, presence: true
    validates :check_out, presence: true
    validates :adults, presence: true, numericality: { only_integer: true, greater_than: 0 }
    validates :children, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
    validates :status, presence: true

    def full
        "#{code} #{guest_id} #{room_id} #{check_in} #{check_out} #{status} #{adults} #{children}"
    end
end