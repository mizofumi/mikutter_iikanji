# -*- coding: utf-8 -*-

Plugin.create(:mikutter_iikanji) do
  command(
    :iikanji,
    name: '超いい感じ',
    condition: -> _ { true },
    visible: true,
    role: :timeline
  ) do
    strs = ["超","いい感じ"]
    Post.primary_service.update(message: (1..35).to_a.map {|_| strs.sample }.join)
  end
end
