class Transactio < ActiveRecord::Base

  # def self.total
  #   Transactio.all.sum(:amount)
  # end
  #
  # def self.number_of_transactios
  #   Transactio.count
  # end
  #
  # def self.angry
  #   Transactio.all.sum(:amount) < 0 ? image_tag("http://www.hd-wallpapersdownload.com/upload/cat-wallpaper/hd-cat-background-pics-wallpaper.jpg") + "YOUR BALANCE IS NEGATIVE!" : nil
  # end
  #
  # def self.highest_expense_ever
  #   self.where("amount <0").order(:amount).first.name.to_s+", "+@transactios.order(:amount).first.amount.to_s+" USD"
  # end
  #
  # def self.most_spent_at
  #   self.where("amount < 0").group(:name).order("sum(amount)").first.name
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
  @transactios.where("amount <0").order(:amount).first.name.to_s+", "+@transactios.order(:amount).first.amount.to_s+" USD"
end

def most_spent_at
  money_number = @transactios.where("amount <0").group(:name).sum(:amount).values.min
  expensive_place = @transactios.group(:name).sum(:amount).key(money_number)
  expensive_place +", "+ money_number.to_s+" USD"

  # @transactios.where("amount < 0").group(:name).order("sum(amount)").first.name
end

def count_this_month
  if @transactios.where("created_at BETWEEN ? AND ?", Time.now.beginning_of_month, Time.now.end_of_month).count
  end
end
