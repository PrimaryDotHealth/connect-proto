# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: meta.proto

require 'google/protobuf'

require 'google/protobuf/timestamp_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("meta.proto", :syntax => :proto3) do
    add_message "primary.connect.Meta" do
      optional :event_type, :enum, 1, "primary.connect.Meta.EventType"
      optional :event_date_and_time, :message, 2, "google.protobuf.Timestamp"
      optional :test, :bool, 3
      optional :source, :message, 4, "primary.connect.Meta.Source"
      repeated :destinations, :message, 5, "primary.connect.Meta.Destination"
      optional :message, :message, 6, "primary.connect.Meta.Message"
      optional :transmission, :message, 7, "primary.connect.Meta.Transmission"
      optional :facility_code, :string, 8
    end
    add_message "primary.connect.Meta.Source" do
      optional :id, :string, 1
      optional :name, :string, 2
    end
    add_message "primary.connect.Meta.Message" do
      optional :id, :string, 1
      optional :order_id, :string, 2
    end
    add_message "primary.connect.Meta.Transmission" do
      optional :id, :string, 1
    end
    add_message "primary.connect.Meta.Destination" do
      optional :id, :string, 1
      optional :name, :string, 2
      map :config, :string, :string, 3
    end
    add_enum "primary.connect.Meta.EventType" do
      value :EVENT_TYPE_NEW, 0
      value :EVENT_TYPE_NEW_UNSOLICITED, 1
      value :EVENT_TYPE_UPDATE, 2
      value :EVENT_TYPE_CANCEL, 3
      value :EVENT_TYPE_QUERY, 4
    end
  end
end

module Primary
  module Connect
    Meta = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("primary.connect.Meta").msgclass
    Meta::Source = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("primary.connect.Meta.Source").msgclass
    Meta::Message = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("primary.connect.Meta.Message").msgclass
    Meta::Transmission = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("primary.connect.Meta.Transmission").msgclass
    Meta::Destination = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("primary.connect.Meta.Destination").msgclass
    Meta::EventType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("primary.connect.Meta.EventType").enummodule
  end
end
