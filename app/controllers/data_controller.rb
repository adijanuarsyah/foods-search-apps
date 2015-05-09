class DataController < ApplicationController
  def input
  end

  def search
    query="%" + params[:search] + "%"
    @query_full = Cibo.where('name=?', params[:search]).first
    puts @query_full.inspect
    @otomatis = Cibo.where('name LIKE ?', query).limit(15).pluck(:name)
    puts @otomatis.inspect
  end
end
