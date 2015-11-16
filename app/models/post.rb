class Post < ActiveRecord::Base
  acts_as_votable
  acts_as_taggable

  belongs_to :user
  has_many :comments

  has_attached_file :image, styles:  { large: "2400x1600#", medium: "600x400>", small: "200x150>" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  self.per_page = 10

  validates :title, presence: true
  validates :image, presence: true

end
