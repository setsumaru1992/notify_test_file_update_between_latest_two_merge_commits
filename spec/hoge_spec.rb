# frozen_string_literal: true

require "rails_helper"

RSpec.describe "hoge" do
  context "when calculated 1" do
    subject { 1 + 2 }
    it { is_expected.to eq(3) }
  end

  context "when calculated 2" do
    subject { 1 + 2 }
    it { is_expected.to eq(3) }
  end

  context "when calculated 3" do
    subject { 1 + 2 }
    it { is_expected.to eq(3) }
  end

  context "when calculated 4" do
    subject { 1 + 2 }
    it { is_expected.to eq(3) }
  end
end