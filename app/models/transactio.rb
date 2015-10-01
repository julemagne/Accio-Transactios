class Transactio < ActiveRecord::Base
end

def initialize
end

def total
  @transactios.sum(:amount)
end

def number_of_transactios
  @transactios.count
end

def angry
  total < 0 ? image_tag("http://www.hd-wallpapersdownload.com/upload/cat-wallpaper/hd-cat-background-pics-wallpaper.jpg") + "YOUR BALANCE IS NEGATIVE!" : nil
end
