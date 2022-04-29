class User < ApplicationRecord
  has_many_attached :images

  def dup
    super.tap do |new_user|
      images.each do |image|
        new_user.images.attach(image.blob)
      end
    end
  end
end
