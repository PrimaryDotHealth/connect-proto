# frozen_string_literal: true

require 'rails_helper'
require './spec/support/shared_examples/protobuf/phone_numberable'

RSpec.describe Primary::Connect::Order::Order::Facility do
  it_behaves_like 'PhoneNumberable'
end
