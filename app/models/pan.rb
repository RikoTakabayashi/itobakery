class Pan < ApplicationRecord
    mount_uploader :image, ImageUploader
    has_many :comments, dependent: :destroy

    scope :star_count, -> {order(overall: :desc)}
end
