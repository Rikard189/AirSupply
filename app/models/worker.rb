class Worker < ApplicationRecord
    has_one :address, dependent: :destroy
end