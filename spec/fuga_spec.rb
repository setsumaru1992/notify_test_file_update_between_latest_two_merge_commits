# frozen_string_literal: true

require "rails_helper"

RSpec.describe "fuga" do
  context "when calculated" do
    subject { 1 + 1 }
    it { is_expected.to eq(2) }
  end
end