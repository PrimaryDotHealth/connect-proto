# frozen_string_literal: true

module ConnectProto
  module Extensions
    module Typeable
      def typeify(value)
        case value
        when String then { string_value: value }
        when Numeric then { number_value: value }
        when NilClass then nil
        else
          raise TypeError, "Invalid type #{value.class} for value #{value}"
        end
      end
    end
  end
end
