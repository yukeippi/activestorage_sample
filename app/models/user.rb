class User < ApplicationRecord
  has_one_attached :image

  def dup
    super.tap do |new_user|
      new_user.image.attach(image.blob)
    end
  end
end
