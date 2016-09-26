class PhotoShout < ApplicationRecord
  # there is the class form the ImageMagick
  has_attached_file :image, styles: {
    shout: "200x200>"
  }
  # fix the Paperclip::Errors::MissingRequiredValidatorError (starting v 4.0)
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
