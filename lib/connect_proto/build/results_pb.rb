# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: results.proto

require 'google/protobuf'

require 'meta_pb'
require 'result_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("results.proto", :syntax => :proto3) do
    add_message "primary.connect.Results" do
      optional :meta, :message, 1, "primary.connect.Meta"
      repeated :results, :message, 2, "primary.connect.Result"
    end
  end
end

module Primary
  module Connect
    Results = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("primary.connect.Results").msgclass
  end
end
