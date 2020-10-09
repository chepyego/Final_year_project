module PropertiesHelper
    def property_thumbnail property
       img = property.photo.present? ? property.photo.thumb.url : "rent.jpg"
       image_tag img, class: "property-thumb"
    end

    def property_photo_url property
        property.photo.present? ? property.photo.url : asset_url("rent1.jpg")
        # image_tag img, class: "property-photo"
     end
end
