class Task < ActiveRecord::Base
	validates :name, presence: true
	validates :description, presence: true, length: { maximum: 240 }
	validates :link, presence: true, format: { with: URI::regexp }
	validates :user_id, presence: true

	belongs_to :user


	def zakonczone?
		!completed.blank?
	end
end
