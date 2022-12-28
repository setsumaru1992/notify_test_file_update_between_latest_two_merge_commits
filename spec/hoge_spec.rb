# frozen_string_literal: true

require "rails_helper"

RSpec.describe "hoge" do
  context "when calculated" do
    subject { 1 + 2 }
    it { is_expected.to eq(3) }
  end
end