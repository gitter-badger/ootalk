require 'spec_helper'
require 'ootalk/equal_to'

describe 'EqualTo' do
  it 'new' do
    eq1 = Ootalk::EqualTo.new(Ootalk::Constant.new(1), Ootalk::Constant.new(1))
    expect(eq1).to_not be_nil
    eq2 = Ootalk::EqualTo.new(Ootalk::Constant.new(1), Ootalk::Constant.new(2))
    expect(eq2).to_not be_nil
  end

  it 'to_s' do
    eq1 = Ootalk::EqualTo.new(Ootalk::Constant.new(1), Ootalk::Constant.new(1))
    expect(eq1.to_s.length).to be >= 0
    eq2 = Ootalk::EqualTo.new(Ootalk::Constant.new(1), Ootalk::Constant.new(2))
    expect(eq2.to_s.length).to be >= 0
  end

  it 'exec' do
    eq1 = Ootalk::EqualTo.new(Ootalk::Constant.new(1), Ootalk::Constant.new(1))
    expect(eq1.exec).to be_truthy
    eq2 = Ootalk::EqualTo.new(Ootalk::Constant.new(1), Ootalk::Constant.new(2))
    expect(eq2.exec).to be_falsey
  end
end
