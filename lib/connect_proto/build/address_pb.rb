# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: address.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("address.proto", :syntax => :proto3) do
    add_message "primary.connect.Address" do
      optional :street_address_1, :string, 1
      optional :street_address_2, :string, 2
      optional :city, :string, 3
      optional :state_code, :string, 4
      optional :zip, :string, 5
      optional :county, :string, 6
      optional :country_code, :string, 7
    end
  end
end

module Primary
  module Connect
    Address = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("primary.connect.Address").msgclass
  end
end
