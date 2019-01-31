class Gossip < ApplicationRecord
	belongs_to :user
	has_many :join_gossip_tags
	has_many :tags, through: :join_gossip_tags
	has_many :likes
	has_many :comments
end