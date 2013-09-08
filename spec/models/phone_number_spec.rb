require 'spec_helper'

describe PhoneNumber do

  describe '#from_string' do
    [
      { string: '(800) 982-4151 x1442', phone: '(800) 982-4151', ext: '1442' },
      { string: '260-592-7472', phone: '260-592-7472', ext: '' }
    ].each do |test|
      it "Parses #{test[:string]}" do
        phone = PhoneNumber.from_string test[:string]
        phone.number.should eq(test[:phone])
        phone.extension.should eq(test[:ext])
      end
    end
  end

end
