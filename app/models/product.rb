class Product < ActiveRecord::Base
  has_many :line_items
  before_destroy :ensure_not_referenced_by_any_line_item
  validates :title,:description,:image_url, :presence => true
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
  validates :title, :uniqueness => true
#  validates :image_url, :format => {
#  :with => %r{\.(gif|jpg|png)$}i,
#  :message => 'must be a URL for GIF,jpg or png image'
#  } 
  
  private
    # hook functiong 勾子方法
    def ensure_not_referenced_by_any_line_item
      if line_items.empty?
        return true
      else 
        errors.add(:base,"line Items present")
        return false
      end
    end
end
