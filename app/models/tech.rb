class Tech < ApplicationRecord
    has_many :tickets

    has_secure_password

    validates :username, presence: true, uniqueness: true
end
