class Contact < ApplicationRecord
	validates :name, :email, :query, presence: true
end
