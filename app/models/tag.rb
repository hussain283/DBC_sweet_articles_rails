class Tag < ActiveRecord::Base
  attr_accessible :name, :slug
  
  has_and_belongs_to_many :articles

  before_create :create_slug

  def to_param
    slug
  end

  def create_slug
    self.slug = self.name.parameterize
  end
end
