class PrivateMessage < ApplicationRecord
	belongs_to :sender, class_name: 'User'
	belongs_to :recipient, class_name: 'User'

  validates :title, presence: true
	validates :content, presence: true
end
