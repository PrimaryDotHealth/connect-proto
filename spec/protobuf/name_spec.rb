# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Primary::Connect::Name do
  describe 'Nameable' do
    describe '#full_name' do
      it 'concatenates first, middle and last name' do
        name = described_class.new(first_name: 'Jon', middle_name: 'bon', last_name: 'Jovi')
        expect(name.full_name).to eq('Jon bon Jovi')
      end

      it 'removes leading/trailing space' do
        name = described_class.new(first_name: ' Jon ', middle_name: ' bon', last_name: 'Jovi ')
        expect(name.full_name).to eq('Jon bon Jovi')
      end

      context 'when a part is missing' do
        it 'is omitted in the concatenation' do
          name = described_class.new(first_name: 'Bob', last_name: 'Smith')
          expect(name.full_name).to eq('Bob Smith')
        end
      end
    end
  end
end
