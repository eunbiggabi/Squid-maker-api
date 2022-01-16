require 'spec_helper'
require_relative '../test.rb'

describe User do
  it 'does something' do
    user = User.new('kyu', 22)
    expect(user.over_13?).to eq(false)
  end
end