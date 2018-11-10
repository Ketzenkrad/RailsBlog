class Post < ApplicationRecord
  validates :title, presence: true, length: {minimum: 1}
  #Привязка к комментариям;
  has_many :comments
end
