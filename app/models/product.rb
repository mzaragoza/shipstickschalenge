class Product
  include Mongoid::Document
  include Mongoid::Search

  field :name
  field :type
  field :length, type: Integer
  field :width, type: Integer
  field :height, type: Integer
  field :weight, type: Integer

  validates_presence_of :name, :type

  search_in :name, :type

end

