class Gossip < ApplicationRecord
  belongs_to :user, optional: true
  has_many :comments, :dependent => :destroy
  has_many :likes


end
