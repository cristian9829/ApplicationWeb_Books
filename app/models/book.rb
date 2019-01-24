class Book < ApplicationRecord
	validates :title, :author, presence: true #Para validar si la informacion recibida no es vacia o nula
	validates :price, numericality: true
	validates :title, length: { minimum: 2 }
	belongs_to :category
	has_many :comments
end
