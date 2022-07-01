# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: medication_administration.proto

require 'google/protobuf'

require 'google/protobuf/timestamp_pb'
require 'coded_value_pb'
require 'identifier_pb'
require 'provider_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("medication_administration.proto", :syntax => :proto3) do
    add_message "primary.connect.MedicationAdministration" do
      optional :identifier, :message, 1, "primary.connect.Identifier"
      repeated :administration_codes, :message, 2, "primary.connect.CodedValue"
      optional :administration_start_time, :message, 3, "google.protobuf.Timestamp"
      optional :administration_end_time, :message, 4, "google.protobuf.Timestamp"
      optional :medication, :message, 5, "primary.connect.MedicationAdministration.Medication"
      optional :dosage, :message, 6, "primary.connect.MedicationAdministration.Dosage"
      optional :refusal_reason, :message, 7, "primary.connect.CodedValue"
      optional :administering_provider, :message, 8, "primary.connect.Provider"
    end
    add_message "primary.connect.MedicationAdministration.Medication" do
      optional :lot_number, :string, 1
      optional :expiration_date, :message, 2, "google.protobuf.Timestamp"
      optional :manufacturer, :message, 3, "primary.connect.CodedValue"
    end
    add_message "primary.connect.MedicationAdministration.Dosage" do
      optional :site, :message, 1, "primary.connect.CodedValue"
      optional :route, :message, 2, "primary.connect.CodedValue"
      optional :method, :message, 3, "primary.connect.CodedValue"
      optional :dose, :string, 4
      optional :units, :message, 5, "primary.connect.CodedValue"
      optional :series_number, :string, 6
      optional :series_recommended, :string, 7
    end
  end
end

module Primary
  module Connect
    MedicationAdministration = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("primary.connect.MedicationAdministration").msgclass
    MedicationAdministration::Medication = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("primary.connect.MedicationAdministration.Medication").msgclass
    MedicationAdministration::Dosage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("primary.connect.MedicationAdministration.Dosage").msgclass
  end
end
