class Service < ApplicationRecord
    def full
        "#{name} #{price} #{is_active}"
    end
end