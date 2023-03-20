class RestrauntPizzaSerializer < ActiveModel::Serializer
  attributes :price, :pizza, :restraunt
  has_one :pizza
  belongs_to :pizza
  belongs_to :restraunt
end
