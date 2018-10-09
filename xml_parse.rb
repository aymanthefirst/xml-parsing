require "nokogiri"

class GuiseppesMenu
  attr_accessor :menu

  def initialize
    @menu = Nokogiri::XML File.open("xml_menu.xml")
  end # end of method

  def get_menu_names
    @menu.search("names")
  end

  def xpath_get_menu_names
    # @menu.xpath("/breakfast_menu/food/name")
    @menu.xpath("//name") # looks everywhere
  end



end # end of class
#
xml = GuiseppesMenu.new
# p xml.menu

# puts xml.get_menu_names.last.text
puts xpath_get_menu_names
