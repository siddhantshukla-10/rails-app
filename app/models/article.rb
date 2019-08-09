class Article < ApplicationRecord

  belongs_to :user
  has_many :article_categories
  has_many :categories, through: :article_categories
  #title and description to be mandatory
  validates :title, presence: true , length: {minimum:3, maximum: 200}
  validates :description, presence: true, length: {minimum:10, maximum:3000}
  validates :user_id, presence: true
end
