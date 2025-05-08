# frozen_string_literal: true

module ConnectProto
  module Extensions
    module Formattable
      module CodedValue
        def to_hl7
          [
            value.presence,
            description.presence,
            code_set.presence,
            alt_value.presence,
            alt_code_set.presence,
            alt_description.presence,
            code_set_version.presence,
            alt_code_set_version.presence,
            original_text.presence
          ].join('^').squeeze(' ').strip
        end
      end
    end
  end
end
