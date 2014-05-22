class Task < ActiveRecord::Base
	validates :name, presence: true
	validates :description, presence: true, length: { maximum: 240 }
	validates :link, presence: true, format: { with: URI::regexp }
	validates :user_id, presence: true

	belongs_to :user

	scope :nieukonczone, -> { where(completed: nil) }
	scope :ukonczone, -> { where("completed is NOT NULL") }


	def zakonczone?
		!completed.blank?
	end

end
