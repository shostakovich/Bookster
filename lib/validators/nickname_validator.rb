class NicknameValidator < ActiveModel::EachValidator
  def validate_each(object, attribute, value)
    unless value =~ /^[a-z0-9][a-z0-9_-]{3,16}$/i
      object.errors[attribute] << (options[:message] || "is not formatted properly")
    end
  end
end