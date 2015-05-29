class Post < ActiveRecord::Base
  acts_as_votable
  belongs_to :user
  has_many :comments

  has_attached_file :image, styles:  { large: "600x400>", medium: "400x300>", small: "200x150>" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  self.per_page = 10
end
