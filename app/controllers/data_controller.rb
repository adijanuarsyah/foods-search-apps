class DataController < ApplicationController
  def input
    @foods = TopFood.where(id: 10)
    puts @foods.inspect
  end

  def search
    # idnyo = TopFood.pluck(:id).shuffle[0..4]
    # foodname = TopFood.where(id: 1)
    # puts foodname.inspect
    
    query="%" + params[:search] + "%"
    @query_full = Cibo.where('name=?', params[:search]).first
    puts @query_full.inspect
    @otomatis = Cibo.where('name LIKE ?', query).limit(15).pluck(:name)
    puts @otomatis.inspect

  end

  def grandom_list

  end
end
