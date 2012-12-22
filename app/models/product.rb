class Product < ActiveRecord::Base
  attr_accessible :category, :description, :details, :manufacturer, :name, :price, :quantity

  belongs_to :user
  has_many :line_items

  validates :price,
            :presence => true
  validates :quantity,
            :presence => true,
            :length => {:within => 1..124}

  def self.search(search_query)
    if search_query
      find(:all, :conditions => ['name LIKE ? or category LIKE ? or manufacturer LIKE ? or details LIKE ?', "%#{search_query}%", "%#{search_query}%", "%#{search_query}%", "%#{search_query}%"])
    else
      find(:all)
    end
  end
end
