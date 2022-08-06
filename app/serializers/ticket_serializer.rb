class TicketSerializer < ActiveModel::Serializer
  attributes :id, :common_issues, :devices, :description
end
