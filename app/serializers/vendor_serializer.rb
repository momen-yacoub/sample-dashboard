class VendorSerializer < ActiveModel::Serializer
  attributes :id, :name, :phone, :products
end
