# Change Log

## 0.30.1

-- Remove all references of `'formattable/coded_value'`

## 0.30.0

-- Remove `Extensions::Formattable::CodedValue` module

## 0.29.0

- Fix missing `CodeValue` alt types

## 0.28.1

- Fix outdated `result_pb` due to building issues

## 0.28.0

- Updated `google-protobof` from `25.5` (3.25.5) to `25.7` (3.25.7)

## 0.27.0

- Update `Result.abnormal_flag` enum to include all values from HL7 table 0078

## 0.26.0

- Update `Order.procedure` to include alternate fields

## 0.25.0

- Update `google-protobuf` to 3.25.5 (security update)

## 0.24.0

- Added `Result.suppress`

## 0.23.0

- Update `Demographics.RaceDetail` enum with more options


## 0.22.0

- Added `Meta.Provenances[]`

## 0.21.0

- Added `procedure` to `Result`
- Update `Result.code` comment to clarify usage
- Update `Visit.Guarantor.RelationToPatient` from `string` to `Relationship` (enum)

## 0.20.0

- Added new message `Procedure` to `Order`
- Added `sub_procedure` to `Procedure` message
- Updated `Order.procedures` to use new `Procedure` message

## 0.19.0

- Downgrade `google-protobuf` to 3.22 (4.rc got yanked)

## 0.18.0

- Added `Order.Order.Status.STATUS_SHIPPED`

## 0.17.0

- Added `repeated CodedValue procedures` to `Order`

## 0.16.0

- Added `Measurement`

## 0.15.0

- Added `repeated Identifier` to `Device`
- Added `model_name` to `Device`
- Added `resulting_device` to `Result`

## 0.14.0

- Added `Order.Order.accession_date_time`

## 0.13.0

- Added `Demographics::Gender::GENDER_INTERSEX`

## 0.12.1

- Update `ConnectProto::Extensions::Valueable` to handle `TrueClass` and `FalseClass`

## 0.12.0

- Added `Order.Order.Status.STATUS_REPORTED`

## 0.11.0

- Added `MedicationAdministration`
- Added `repeated MedicationAdministration` to `Order.Order`
- Added `Formattable::CodedValue` extension

## 0.10.2

- Use `oneof` for `Subject` in `Order`

## 0.10.1

- Added `Device` model and `Subject` field to `Order`

## 0.9.0

- Update enums at index 0 to be an `unknown` type value

## 0.8.2

- This change applies to version 0.8.1 as well
- Force google-protobuf:4.0.0.rc.1 in Gemfile.lock

## 0.8.0

- Pull `Result` out of `Results`
- Add `repeated Result` to `Order.Order`

## 0.7.3

- Add require in gemspec

## 0.7.2

- Add `Typeable` extension

## 0.7.1

- Use `Value` instead of `Any`

## 0.7.0

- Added `echo` to `Meta`
- Updated `Meta.destination.config`

## 0.6.0

- Added `external_ids` to `Order`
- Added `url` to `Report`

## 0.5.0

- Added `TimeZone` to `Address`
