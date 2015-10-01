class Transactio < ActiveRecord::Base

  # def self.total
  #   @transactios.sum(:amount)
  # end

  # def number_of_transactios
  #   @transactios.count
  # end
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

def highest_expense_ever
  @transactios.order(:amount).first.name.to_s+", "+@transactios.order(:amount).first.amount.to_s+" USD"
end

def most_spent_at
  money_number = @transactios.group(:name).sum(:amount).values.sort.first
  expensive_place = @transactios.group(:name).sum(:amount).key(money_number)
  expensive_place +", "+ money_number.to_s+" USD"
end

# def most_spent_at
#   @transactios.group(:name).sum(:amount).values.reduce {|t|
#     first = t
#     if t > first
#       r = t
#     else
#       r = first
#     end
#   }
#   r
# end
