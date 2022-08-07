class TicketSerializer < ActiveModel::Serializer
  attributes :id, :common_issues, :devices, :description, :name

  # has_many :employees
  # has_one :tech

end
