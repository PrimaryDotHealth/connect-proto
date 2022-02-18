# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: order.proto

require 'google/protobuf'

require 'google/protobuf/timestamp_pb'
require 'address_pb'
require 'coded_value_pb'
require 'meta_pb'
require 'patient_pb'
require 'phone_number_pb'
require 'provider_pb'
require 'specimen_pb'
require 'visit_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("order.proto", :syntax => :proto3) do
    add_message "primary.connect.Order" do
      optional :meta, :message, 1, "primary.connect.Meta"
      optional :patient, :message, 2, "primary.connect.Patient"
      optional :visit, :message, 3, "primary.connect.Visit"
      optional :order, :message, 4, "primary.connect.Order.Order"
    end
    add_message "primary.connect.Order.Order" do
      optional :id, :string, 1
      optional :application_order_id, :string, 2
      optional :status, :enum, 3, "primary.connect.Order.Order.Status"
      optional :transaction_date_time, :message, 4, "google.protobuf.Timestamp"
      optional :collection_date_time, :message, 5, "google.protobuf.Timestamp"
      optional :completion_date_time, :message, 6, "google.protobuf.Timestamp"
      optional :expiration_date, :string, 7
      optional :specimen, :message, 8, "primary.connect.Specimen"
      optional :procedure, :message, 9, "primary.connect.CodedValue"
      optional :ordering_provider, :message, 10, "primary.connect.Provider"
      repeated :result_copy_providers, :message, 11, "primary.connect.Provider"
      optional :ordering_facility, :message, 12, "primary.connect.Order.Order.Facility"
      optional :priority, :enum, 13, "primary.connect.Order.Order.Priority"
      repeated :diagnoses, :message, 14, "primary.connect.Order.Order.Diagnosis"
      optional :clinical_comments, :string, 15
      repeated :notes, :string, 16
      repeated :clinical_info, :message, 17, "primary.connect.Order.Order.ClinicalInfo"
      optional :results_status, :enum, 18, "primary.connect.Order.Order.ResultStatus"
      optional :response_flag, :enum, 19, "primary.connect.Order.Order.ResponseFlag"
    end
    add_message "primary.connect.Order.Order.Facility" do
      optional :name, :string, 1
      optional :address, :message, 2, "primary.connect.Address"
      repeated :phone_numbers, :message, 3, "primary.connect.PhoneNumber"
    end
    add_message "primary.connect.Order.Order.Diagnosis" do
      optional :code, :message, 1, "primary.connect.CodedValue"
      optional :type, :enum, 2, "primary.connect.Order.Order.Diagnosis.Type"
      optional :documented_date_time, :message, 3, "google.protobuf.Timestamp"
    end
    add_enum "primary.connect.Order.Order.Diagnosis.Type" do
      value :TYPE_UNKNOWN, 0
      value :TYPE_ADMITTING, 1
      value :TYPE_FINAL, 2
      value :TYPE_SELF, 3
      value :TYPE_WORKING, 4
      value :TYPE_PRINCIPAL, 5
    end
    add_message "primary.connect.Order.Order.ClinicalInfo" do
      optional :code, :message, 1, "primary.connect.CodedValue"
      optional :value, :string, 2
      optional :units, :string, 3
      optional :abbreviation, :string, 4
      repeated :notes, :string, 5
    end
    add_enum "primary.connect.Order.Order.Status" do
      value :STATUS_NEW, 0
      value :STATUS_UPDATE, 1
      value :STATUS_CANCEL, 2
      value :STATUS_RESULTED, 3
    end
    add_enum "primary.connect.Order.Order.Priority" do
      value :PRIORITY_STAT, 0
      value :PRIORITY_ASAP, 1
      value :PRIORITY_ROUTINE, 2
      value :PRIORITY_PREOPERATIVE, 3
      value :PRIORITY_TIMING_CRITICAL, 4
    end
    add_enum "primary.connect.Order.Order.ResultStatus" do
      value :UNAVAILABLE, 0
      value :PRELIMINARY, 1
      value :IN_PROCESS, 2
      value :CORRECTED, 3
      value :CANCELED, 4
      value :FINAL, 5
    end
    add_enum "primary.connect.Order.Order.ResponseFlag" do
      value :ACKNOWLEDGEMENT, 0
      value :EXCEPTIONS, 1
      value :REPLACEMENTS, 2
      value :ASSOCIATED_SEGMENTS, 3
      value :CONFIRMATIONS, 4
    end
  end
end

module Primary
  module Connect
    Order = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("primary.connect.Order").msgclass
    Order::Order = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("primary.connect.Order.Order").msgclass
    Order::Order::Facility = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("primary.connect.Order.Order.Facility").msgclass
    Order::Order::Diagnosis = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("primary.connect.Order.Order.Diagnosis").msgclass
    Order::Order::Diagnosis::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("primary.connect.Order.Order.Diagnosis.Type").enummodule
    Order::Order::ClinicalInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("primary.connect.Order.Order.ClinicalInfo").msgclass
    Order::Order::Status = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("primary.connect.Order.Order.Status").enummodule
    Order::Order::Priority = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("primary.connect.Order.Order.Priority").enummodule
    Order::Order::ResultStatus = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("primary.connect.Order.Order.ResultStatus").enummodule
    Order::Order::ResponseFlag = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("primary.connect.Order.Order.ResponseFlag").enummodule
  end
end
