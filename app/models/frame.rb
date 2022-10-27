class Frame < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates :description, presence: true, length: {minimum:6, maximum:100}
    validates :stock, presence: true, numericality: { only_integer: true }
    validates :price, presence: true, numericality: true
    validates :currency, presence: true
    has_many :order_items
    belongs_to :user
end
