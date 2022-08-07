class EmployeeSerializer < ActiveModel::Serializer
  attributes :id, :name, :department, :manager, :title, :phone
end
