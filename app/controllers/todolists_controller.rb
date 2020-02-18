class TodolistsController < ApplicationController
  def new
  	@list = List.new #@listはインスタンス変数 Viewに引数を渡し、表示させるために空のobjectを作成する
  end

  def create
  	list = List.new(list_params) #インスタンスの作成(new)
  	list.save
  	redirect_to '/top'
end

private

def list_params
	params.require(:list).permit(:title, :body)
end

end
