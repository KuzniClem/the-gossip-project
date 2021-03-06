class Gossip < ApplicationRecord
	belongs_to :user
	has_many :join_table_tag_gossips
	has_many :tags, through: :join_table_tag_gossips
	has_many :likes

	validates :title, presence: true
	validates :content, presence: true
end
