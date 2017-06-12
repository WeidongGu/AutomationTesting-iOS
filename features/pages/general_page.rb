module GeneralPage
  include Test::Unit::Assertions

  def should_see text
    assert(driver.get_source.include?(text))
  end

  def load_element element_id
    Constants::ELEMENTS.include?(element_id) ? @element_id=Constants::ELEMENTS.fetch(element_id) : @element_id=element
    @element = find_element accessibility_id: @element_id
  end

  def fill_element element_id, text
    load_element element_id
    @element.clear
    @element.send_keys text
  end

  def click_element element_id
    load_element element_id
    @element.click
  end

  def wait_second text
    sleep text.to_i
  end
end
