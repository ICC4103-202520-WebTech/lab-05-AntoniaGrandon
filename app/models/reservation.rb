class Reservation < ApplicationRecord
    def full
        "#{code} #{guest_id} #{room_id} #{check_in} #{check_out} #{status} #{adults} #{children}"
    end
end