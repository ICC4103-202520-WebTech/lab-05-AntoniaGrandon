class Room < ApplicationRecord
    def full
        "#{number} #{room_type} #{price} #{status}"
    end
end
