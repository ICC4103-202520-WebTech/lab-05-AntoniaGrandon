class Guest < ApplicationRecord
    def full
        "#{first_names} #{last_name} #{email} #{phone} #{document_id}"
    end
end