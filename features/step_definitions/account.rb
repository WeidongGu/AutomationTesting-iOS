当(/^我进入"([^"]*)"页面$/) do |text|
    assert(driver.get_source.include?(text))
end

当(/^我输入邮箱"([^"]*)"和密码"([^"]*)"$/) do |email , password|
    element = find_element accessibility_id: "emailTextFiled"
    element.clear
    element.send_keys email

    element = find_element accessibility_id: "passwordTextfield"
    element.clear
    element.send_keys password
end

当(/^我点击"([^"]*)"$/) do |element_id|
    if element_id == "登录"
        element_id = "loginbutton"
    end
    element = find_element accessibility_id: element_id
    element.click
end

当(/^等待"([^"]*)"秒$/) do |text|
    sleep text.to_i
end

当(/^我应该看到"([^"]*)"$/) do |text|
    assert(driver.get_source.include?(text))
end
