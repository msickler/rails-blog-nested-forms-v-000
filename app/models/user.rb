class User < ActiveRecord::Base
  has_many :posts
  has_many :comments
  accepts_nested_attributes_for :posts, reject_if: proc { |attributes| attributes['title'].blank? }
  accepts_nested_attributes_for :tags, reject_if: proc { |attributes| attributes['tag'].blank? }

  validates_uniqueness_of :name
  validates_presence_of :name
end
