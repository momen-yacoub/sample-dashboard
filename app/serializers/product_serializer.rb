class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :vendor_id, :price, :quantity, :vendor_name, :vendor, :uploaded_file

  def vendor_name
    object.vendor&.name
  end
end
