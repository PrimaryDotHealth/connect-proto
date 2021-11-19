# frozen_string_literal: true

$LOAD_PATH << './lib/connect_proto/build'

require 'address_pb'
require 'coded_value_pb'
require 'demographics_pb'
require 'identifier_pb'
require 'location_pb'
require 'meta_pb'
require 'name_pb'
require 'order_pb'
require 'patient_pb'
require 'phone_number_pb'
require 'provider_pb'
require 'relationship_pb'
require 'results_pb'
require 'specimen_pb'
require 'visit_pb'

$LOAD_PATH << './lib/extensions'

require 'full_nameable'
require 'phone_numberable'

Primary::Connect::Name.include(ConnectProto::Extensions::FullNameable)
[
  Primary::Connect::Provider,
  Primary::Connect::Demographics,
  Primary::Connect::Order::Order::Facility,
  Primary::Connect::Patient::Contact,
  Primary::Connect::Visit::Guarantor,
  Primary::Connect::Visit::Guarantor::Employer
].each do |protobuf|
  protobuf.include(ConnectProto::Extensions::PhoneNumberable)
end

module ConnectProto; end
