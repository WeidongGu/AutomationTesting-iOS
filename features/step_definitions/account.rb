当(/^我进入"([^"]*)"页面$/) do |text|
    GeneralPage.should_see text
end

当(/^我输入邮箱"([^"]*)"和密码"([^"]*)"$/) do |email , password|
    GeneralPage.fill_element("邮箱",email)
    GeneralPage.fill_element("密码",password)
end

当(/^我点击"([^"]*)"$/) do |element_id|
    GeneralPage.click_element element_id
end

当(/^等待"([^"]*)"秒$/) do |text|
    GeneralPage.wait_second text
end

当(/^我应该看到"([^"]*)"$/) do |text|
    GeneralPage.should_see text
end
