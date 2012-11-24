class Product < ActiveRecord::Base
  attr_accessible :category, :description, :details, :manufacturer, :name, :price

  belongs_to :user
  has_many :line_items

  def self.search(search_query)
    if search_query
      find(:all, :conditions => ['name LIKE ? or category LIKE ? or manufacturer LIKE ? or details LIKE ?', "%#{search_query}%", "%#{search_query}%", "%#{search_query}%", "%#{search_query}%"])
    else
      find(:all)
    end
  end
end
