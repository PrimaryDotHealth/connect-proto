# frozen_string_literal: true

module ConnectProto
  module Extensions
    module Formattable
      module CodedValue
        def to_hl7
          [
            value.presence,
            description.presence,
            code_set.presence
          ].join('^').squeeze(' ').strip
        end
      end
    end
  end
end
