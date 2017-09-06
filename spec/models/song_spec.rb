require 'rails_helper'

RSpec.describe Song, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_uniqueness_of(:title) }
    it { is_expected.to validate_presence_of(:album) }
    it { is_expected.to validate_uniqueness_of(:album) }
    it { is_expected.to validate_presence_of(:release_year) }
  end
end