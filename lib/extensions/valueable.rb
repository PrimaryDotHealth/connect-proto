# frozen_string_literal: true

module ConnectProto
  module Extensions
    module Valueable
      def self.to_value(value)
        case value
        when TrueClass, FalseClass then Google::Protobuf::Value.new(bool_value: value)
        when String then Google::Protobuf::Value.new(string_value: value)
        when Numeric then Google::Protobuf::Value.new(number_value: value)
        when NilClass then Google::Protobuf::Value.new(null_value: :NULL_VALUE)
        else
          raise TypeError, "Invalid type #{value.class} for value #{value}"
        end
      end
    end
  end
end
