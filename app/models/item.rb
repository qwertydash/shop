class Item < ActiveRecord::Base
	has_attached_file :image, styles: {large: "600x600", medium: "300x300", thumb: "150x150"}
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
	belongs_to :category
	has_many :line_items
	before_destroy :ensure_not_referenced_by_any_line_item

  private

    # ensure that there are no line items referencing this product
    def ensure_not_referenced_by_any_line_item
      if line_items.empty?
        return true
      else
        errors.add(:base, 'Line Items present')
        return false
      end
    end	
    
end
