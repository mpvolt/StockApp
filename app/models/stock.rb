class Stock < ApplicationRecord
	belongs_to :user
	validates :ticker, presence: true
	validates :ticker, format:{ without: /\s/}
	validates_uniqueness_of   :ticker, scope: :ticker
end
