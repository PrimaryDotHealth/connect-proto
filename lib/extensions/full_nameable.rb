# frozen_string_literal: true

module ConnectProto
  module Extensions
    module FullNameable
      def full_name
        [
          first_name.presence,
          middle_name.presence,
          last_name.presence
        ].compact.join(' ').squeeze(' ').strip
      end
    end
  end
end
