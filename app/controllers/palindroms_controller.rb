# frozen_string_literal: true

# Palindroms controller
class PalindromsController < ApplicationController
  def index; end

  def result
    @number = params[:num].to_i
    @res_arr = PalindromsController.result_array(@number).compact
    redirect_to home_path, notice: 'Вводите числа >= 0' if @res_arr.size.zero?
  end

  def self.result_array(num)
    (2..num).map do |elem|
      c = 0;
      (2..elem).each do |i|
        if (elem.to_i) % i == 0 then c+=1
        end
      end
      if c == 1 then elem.to_i
      end
    end.compact
  end
end
