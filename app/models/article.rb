class Article < ApplicationRecord
  has_and_belongs_to_many :users
  has_many :comments, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5 }
  acts_as_taggable
end
