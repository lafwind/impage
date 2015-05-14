class Post < ActiveRecord::Base
  belongs_to :user

  has_attached_file :image, styles:  { large: "800x600>", medium: "400x300>", small: "200x150>" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
