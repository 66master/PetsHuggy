class Photo < ApplicationRecord
  belongs_to :listing
  
  #has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png" 
  #参考　stylesがあるとエラーhttps://www.google.co.jp/search?q=%E7%BF%BB%E8%A8%B3&ie=utf-8&oe=utf-8&client=firefox-b&gfe_rd=cr&ei=P1t6WfnwHqrz8AfDtJ6oDw
  #参考　https://stackoverflow.com/questions/16072338/papercliperrorsnotidentifiedbyimagemagickerror-on-windows-7
  has_attached_file :image, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/#imageはavater、最後のＺは本来は小文字だった

  #こちらは公式ドキュメントの例
  #has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  #validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
