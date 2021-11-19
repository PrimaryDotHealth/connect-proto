# frozen_string_literal: true

require 'rails_helper'
require './app/protobuf/build/order_pb'

RSpec.describe Primary::Connect::Order do
  it 'exists' do
    expect(described_class).to be
  end

  describe 'instantiation' do
    it 'takes meta' do
      order = described_class.new(meta: Primary::Connect::Meta.new)
      expect(order.meta).to be
    end

    it 'takes a patient' do
      order = described_class.new(patient: Primary::Connect::Patient.new)
      expect(order.patient).to be
    end

    it 'takes a visit' do
      order = described_class.new(visit: Primary::Connect::Visit.new)
      expect(order.visit).to be
    end

    it 'takes an order' do
      order = described_class.new(order: described_class::Order.new)
      expect(order.order).to be
    end
  end
end
