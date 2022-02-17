class Gossip < ApplicationRecord
    belongs_to :user
    has_many :affiliations, dependent: :destroy 
    has_many :tags, through: :affiliations
    has_many :comments



end












    