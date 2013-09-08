class PhoneNumber < ActiveRecord::Base

  EXTENSION_REGEX = /x(\d*)/

  def self.from_string(string)
    new.tap do |phone_number|
      phone_number.extension = string =~ EXTENSION_REGEX ? EXTENSION_REGEX.match(string)[1].to_s : ''
      phone_number.number = string.gsub(EXTENSION_REGEX,'').strip
    end
  end

  def to_s
    "#{number} x#{extension}"
  end

end
