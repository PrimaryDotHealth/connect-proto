# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: provider.proto

require 'google/protobuf'

require 'address_pb'
require 'identifier_pb'
require 'location_pb'
require 'name_pb'
require 'phone_number_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("provider.proto", :syntax => :proto3) do
    add_message "primary.connect.Provider" do
      optional :identifier, :message, 1, "primary.connect.Identifier"
      optional :npi, :string, 2
      optional :name, :message, 3, "primary.connect.Name"
      repeated :credentials, :string, 4
      optional :address, :message, 5, "primary.connect.Address"
      repeated :email_addresses, :string, 6
      repeated :phone_numbers, :message, 7, "primary.connect.PhoneNumber"
      optional :location, :message, 8, "primary.connect.Location"
    end
  end
end

module Primary
  module Connect
    Provider = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("primary.connect.Provider").msgclass
  end
end
