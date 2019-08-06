class Article < ApplicationRecord
  #title and description to be mandatory
  validates :title, presence: true , length: {minimum:3, maximum: 50}
  validates :description, presence: true, length: {minimum:10, maximum:300}
end
