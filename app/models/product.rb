class Product < ActiveRecord::Base
	validates :title, :description, :image_url, presence: true
	validates :price, numericality: {greater_than_or_equal_to: 0.01, message: 'Цена должна быть больше 0.01'}
	validates :image_url, allow_blank: true, format:{with: %r{\.(gif|jpg|png)\Z}i,
		message: 'URL должен указывать на изображение формата GIF, JPG или PNG!'}
	validates :title, :uniqueness => true, :length => {:minimum => minimum = 10, message: 'В названии должно быть не менее 10 символов!'}
end
