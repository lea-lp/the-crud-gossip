class Gossip < ApplicationRecord
  belongs_to :user
  has_many :comments, :dependent => :destroy
  has_many :likes


end
