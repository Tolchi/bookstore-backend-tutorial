# frozen_string_literal: true

require 'rails_helper'

describe Author do
  it { should have_many(:books) }

  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name) }

  it { should have_db_column(:name).of_type(:string) }

  describe '#to_s' do
    subject { create(:author) }

    it { expect(subject.to_s).to eq subject.name }
  end
end
