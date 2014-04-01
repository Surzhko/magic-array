require 'magic-array'

describe 'ClassMethods' do
  context '.from_existing' do
    it { expect(Object).to respond_to :from_existing }

    context 'build array from constants' do
      before :all do
        class MyTestClass
          PREFIXED__CONST_1 = 1
          PREFIXED__CONST_2 = 2
          CONST_3 = 3
          ARRAY = from_existing /^PREFIXED/
        end
      end

      it { expect(MyTestClass::ARRAY).to be_a Array }
      it { expect(MyTestClass::ARRAY).to eq [1, 2] }
    end
  end
end
