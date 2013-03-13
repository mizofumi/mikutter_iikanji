# -*- coding: utf-8 -*-

Plugin.create(:mikutter_iikanji) do
  
  command(
  :iikanji,
  name: '超いい感じ',
  condition: -> _ { true },
  visible: true,
  role: :timeline) do
    str=["超","いい感じ"]
    text=""
    for i in 1..35
      text.concat(str[rand(str.length)])  
    end
    Post.primary_service.update(:message => "#{text}")
  end
  
  
end
