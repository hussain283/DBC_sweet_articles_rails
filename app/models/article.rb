class Article < ActiveRecord::Base
  attr_accessible :title, :description, :url, :slug

  has_and_belongs_to_many :tags
  
  belongs_to :category

  before_create :create_slug

  def to_param
    slug
  end

  def create_slug
    p self
    self.slug = self.title.parameterize
  end
end
