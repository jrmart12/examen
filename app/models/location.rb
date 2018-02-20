class Location < ApplicationRecord
		belongs_to :user
	has_many :recordings, dependent: :destroy

	validates :name, presence: true, length: { minimum: 20 }
end
