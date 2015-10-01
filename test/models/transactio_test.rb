require 'test_helper'

class TransactioTest < ActiveSupport::TestCase

  def test_assert_class_exists
    assert Transactio
  end

  def test_can_save
    tran = Transactio.new
    assert tran.save
  end

  def test_assert_total
    assert_equal (Transactio.new.send :total), 880000000
  end

  def test_number_of_transactions
    assert_equal Transactio.new.number_of_transactios, 2
  end

  def test_highest_expense_ever
    t = Transactio.create
    assert_equal "Honda, -14000.0 USD", t.highest_expense_ever
  end

  def test_most_spent_at
    assert_equal "The Iron Yard, -15000.0 USD", Transactio.send(most_spent_at)
  end
end
