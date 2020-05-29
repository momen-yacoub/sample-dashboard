class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :vendor_id, :price, :quantity
end
