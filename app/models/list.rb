class List < ActiveRecord::Base
  has_and_belongs_to_many :words
  
  before_create :create_slug

  def to_param
    slug
  end

  def create_slug
    self.slug = self.name.parameterize
  end
end
