class Property < ApplicationRecord
    mount_uploader :photo, ImageUploader
    belongs_to :account
end
