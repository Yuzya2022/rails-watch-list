class List < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  has_many :bookmarks
  has_many :reviews, dependent: :destroy
  has_many :movies, through: :bookmarks, dependent: :destroy
  has_one_attached :photo
end
