require 'spec_helper'
require 'ootalk/not_equal'

describe 'NotEqual' do
  let(:neq1) {OoTalk::NotEqual.new(OoTalk::Constant.new(1), OoTalk::Constant.new(2))}
  let(:neq2) {OoTalk::NotEqual.new(OoTalk::Constant.new(2), OoTalk::Constant.new(1))}
  let(:neq3) {OoTalk::NotEqual.new(OoTalk::Constant.new(1), OoTalk::Constant.new(1))}
  let(:neq4) {OoTalk::NotEqual.new(OoTalk::Constant.new(2), OoTalk::Constant.new(2))}

  it 'initialize' do
    expect(neq1).to_not be_nil
    expect(neq2).to_not be_nil
    expect(neq3).to_not be_nil
    expect(neq4).to_not be_nil
  end

  it 'to_s' do
    expect(neq1.to_s.length).to be >= 0
    expect(neq2.to_s.length).to be >= 0
    expect(neq3.to_s.length).to be >= 0
    expect(neq4.to_s.length).to be >= 0
  end

  it 'exec' do
    expect(neq1.exec).to be_truthy
    expect(neq2.exec).to be_truthy
    expect(neq3.exec).to be_falsey
    expect(neq4.exec).to be_falsey
  end
end