require 'nokogiri'

class GuiseppesMenu

  attr_accessor :menu

  def initialize
    @menu = Nokogiri::XML(File.open('./xml_menu.xml'))
  end

  def get_price
    @menu.xpath('//price')
  end

  def get_name
    @menu.xpath('//name')
  end

  def get_calories
  calories = @menu.xpath("//calories")
  caloriesArr = []
  calories.each do |calories|
    caloriesArr.push calories.text
  end
  return caloriesArr.max
end

def get_description
    @menu.xpath('//description')
end



end # end of class


@xml_menu = GuiseppesMenu.new
# p xml.menu

# p @xml_menu.menu.xpath("//price")
# puts xpath_get_menu_names


@aVar = @xml_menu.menu.xpath("//name")
@aVar.each do |value|
  puts value.xpath("following-sibling::price")
end
