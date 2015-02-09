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

  def self.search(search ={})
    search = search.split('x')
    length = search[0].to_i || 0
    width  = search[1].to_i || 0
    height = search[2].to_i || 0
    self.gt(length: length).gt(width: width).gt(height: height).order_by(:width.asc, :height.asc, :length.asc).to_a.first
  end
end

