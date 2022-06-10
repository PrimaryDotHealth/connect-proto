# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: device.proto

require 'google/protobuf'

require 'google/protobuf/struct_pb'
require 'google/protobuf/timestamp_pb'
require 'address_pb'
require 'identifier_pb'
require 'location_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("device.proto", :syntax => :proto3) do
    add_message "primary.connect.Device" do
      optional :device_id, :message, 1, "primary.connect.Identifier"
      optional :manufacturer, :string, 2
      optional :model_number, :string, 3
      optional :serial_number, :string, 4
      optional :address, :message, 5, "primary.connect.Address"
      optional :location, :message, 6, "primary.connect.Location"
      map :config, :string, :message, 7, "google.protobuf.Value"
    end
  end
end

module Primary
  module Connect
    Device = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("primary.connect.Device").msgclass
  end
end