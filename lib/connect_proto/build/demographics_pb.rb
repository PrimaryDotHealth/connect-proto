# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: demographics.proto

require 'google/protobuf'

require 'google/protobuf/timestamp_pb'
require 'address_pb'
require 'name_pb'
require 'phone_number_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("demographics.proto", :syntax => :proto3) do
    add_message "primary.connect.Demographics" do
      optional :name, :message, 1, "primary.connect.Name"
      optional :dob, :string, 2
      optional :ssn, :string, 3
      optional :sex, :enum, 4, "primary.connect.Demographics.Sex"
      optional :gender, :enum, 5, "primary.connect.Demographics.Gender"
      optional :sexual_orientation, :enum, 6, "primary.connect.Demographics.SexualOrientation"
      repeated :races, :enum, 7, "primary.connect.Demographics.Race"
      repeated :race_details, :enum, 8, "primary.connect.Demographics.RaceDetail"
      optional :ethnicity, :enum, 9, "primary.connect.Demographics.Ethnicity"
      repeated :ethnicity_detail, :enum, 10, "primary.connect.Demographics.EthnicityDetail"
      optional :marital_status, :enum, 11, "primary.connect.Demographics.MaritalStatus"
      optional :is_deceased, :bool, 12
      optional :death_date_time, :message, 13, "google.protobuf.Timestamp"
      repeated :phone_numbers, :message, 14, "primary.connect.PhoneNumber"
      repeated :email_addresses, :string, 15
      optional :language_code, :string, 16
      repeated :citizenships, :string, 17
      optional :address, :message, 18, "primary.connect.Address"
    end
    add_enum "primary.connect.Demographics.Race" do
      value :RACE_UNKNOWN, 0
      value :RACE_AMERICAN_INDIAN_OR_ALASKA_NATIVE, 1
      value :RACE_ASIAN, 2
      value :RACE_BLACK_OR_AFRICAN_AMERICAN, 3
      value :RACE_NATIVE_HAWAIIAN_OR_OTHER_PACIFIC_ISLANDER, 4
      value :RACE_OTHER, 5
      value :RACE_WHITE, 6
      value :RACE_PREFER_NOT_TO_DISCLOSE, 7
      value :RACE_MIDDLE_EASTERN_OR_NORTH_AFRICAN, 8
      value :RACE_SOUTH_OR_CENTRAL_AMERICAN_INDIAN, 9
    end
    add_enum "primary.connect.Demographics.RaceDetail" do
      value :RACE_DETAIL_UNKNOWN, 0
      value :RACE_DETAIL_ASIAN_INDIAN, 1
      value :RACE_DETAIL_CHINESE, 2
      value :RACE_DETAIL_CAMBODIAN, 3
      value :RACE_DETAIL_FILIPINO, 4
      value :RACE_DETAIL_JAPANESE, 5
      value :RACE_DETAIL_KOREAN, 6
      value :RACE_DETAIL_LAOTIAN, 7
      value :RACE_DETAIL_VIETNAMESE, 8
      value :RACE_DETAIL_OTHER_ASIAN, 9
      value :RACE_DETAIL_NATIVE_HAWAIIAN, 10
      value :RACE_DETAIL_GUAMIAN_OR_CHAMORRO, 11
      value :RACE_DETAIL_SAMOAN, 12
      value :RACE_DETAIL_OTHER_PACIFIC_ISLANDER, 13
      value :RACE_DETAIL_PREFER_NOT_TO_DISCLOSE, 14
    end
    add_enum "primary.connect.Demographics.MaritalStatus" do
      value :MARITAL_STATUS_UNKNOWN, 0
      value :MARITAL_STATUS_SEPARATED, 1
      value :MARITAL_STATUS_UNMARRIED, 2
      value :MARITAL_STATUS_COMMON_LAW, 3
      value :MARITAL_STATUS_DIVORCED, 4
      value :MARITAL_STATUS_LEGALLY_SEPARATED, 5
      value :MARITAL_STATUS_LIVING_TOGETHER, 6
      value :MARITAL_STATUS_INTERLOCUTORY, 7
      value :MARITAL_STATUS_MARRIED, 8
      value :MARITAL_STATUS_ANNULLED, 9
      value :MARITAL_STATUS_OTHER, 10
      value :MARITAL_STATUS_DOMESTIC_PARTNER, 11
      value :MARITAL_STATUS_REGISTERED_DOMESTIC_PARTNER, 12
      value :MARITAL_STATUS_SINGLE, 13
      value :MARITAL_STATUS_UNREPORTED, 14
      value :MARITAL_STATUS_WIDOWED, 15
    end
    add_enum "primary.connect.Demographics.Sex" do
      value :SEX_UNKNOWN, 0
      value :SEX_FEMALE, 1
      value :SEX_MALE, 2
      value :SEX_OTHER, 3
      value :SEX_NON_BINARY, 4
      value :SEX_PREFER_NOT_TO_DISCLOSE, 5
    end
    add_enum "primary.connect.Demographics.Gender" do
      value :GENDER_UNKNOWN, 0
      value :GENDER_FEMALE, 1
      value :GENDER_MALE, 2
      value :GENDER_OTHER, 3
      value :GENDER_NON_BINARY, 4
      value :GENDER_TRANSGENDER_MALE, 5
      value :GENDER_TRANSGENDER_FEMALE, 6
      value :GENDER_PREFER_NOT_TO_DISCLOSE, 7
    end
    add_enum "primary.connect.Demographics.SexualOrientation" do
      value :ORIENTATION_UNKNOWN, 0
      value :ORIENTATION_HOMOSEXUAL, 1
      value :ORIENTATION_HETEROSEXUAL, 2
      value :ORIENTATION_BISEXUAL, 3
      value :ORIENTATION_QUESTIONING, 4
      value :ORIENTATION_OTHER, 5
      value :ORIENTATION_PREFER_NOT_TO_DISCLOSE, 6
    end
    add_enum "primary.connect.Demographics.Ethnicity" do
      value :ETHNICITY_UNKNOWN, 0
      value :ETHNICITY_HISPANIC, 1
      value :ETHNICITY_NON_HISPANIC, 2
      value :ETHNICITY_PREFER_NOT_TO_DISCLOSE, 3
    end
    add_enum "primary.connect.Demographics.EthnicityDetail" do
      value :ETHNICITY_DETAIL_UNKNOWN, 0
      value :ETHNICITY_DETAIL_MEXICAN, 1
      value :ETHNICITY_DETAIL_PUERTO_RICAN, 2
      value :ETHNICITY_DETAIL_CUBAN, 3
      value :ETHNICITY_DETAIL_OTHER, 4
      value :ETHNICITY_DETAIL_PREFER_NOT_TO_DISCLOSE, 5
    end
  end
end

module Primary
  module Connect
    Demographics = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("primary.connect.Demographics").msgclass
    Demographics::Race = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("primary.connect.Demographics.Race").enummodule
    Demographics::RaceDetail = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("primary.connect.Demographics.RaceDetail").enummodule
    Demographics::MaritalStatus = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("primary.connect.Demographics.MaritalStatus").enummodule
    Demographics::Sex = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("primary.connect.Demographics.Sex").enummodule
    Demographics::Gender = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("primary.connect.Demographics.Gender").enummodule
    Demographics::SexualOrientation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("primary.connect.Demographics.SexualOrientation").enummodule
    Demographics::Ethnicity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("primary.connect.Demographics.Ethnicity").enummodule
    Demographics::EthnicityDetail = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("primary.connect.Demographics.EthnicityDetail").enummodule
  end
end
