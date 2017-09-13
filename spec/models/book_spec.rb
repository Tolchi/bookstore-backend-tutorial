# frozen_string_literal: true

describe Book do
  it { should belong_to(:author) }

  it { should validate_uniqueness_of(:title) }
  it { should validate_presence_of(:title) }

  it { should have_db_column(:title).of_type(:string) }
  it { should have_db_column(:author_id).of_type(:integer) }
  it { should have_db_column(:price_cents).of_type(:integer) }

  describe '#to_s' do
    subject { create(:book) }

    it { expect(subject.to_s).to eq subject.title }
  end
end
