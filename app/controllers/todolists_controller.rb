class TodolistsController < ApplicationController
  def new
  	@list = List.new #@listはインスタンス変数 Viewに引数を渡し、表示させるために空のobjectを作成する
  end

  def create
  	list = List.new(list_params) #インスタンスの作成(new)
  	list.save
  	redirect_to todolist_path(list.id)
  end

  def index
  	@lists = List.all #複数形なのはすべてのデータが格納されるため
  end

  def show
  	@list = List.find(params[:id]) #単数形＝１件を表示　ルーティングでtodolists:idとしているので,findメゾットを使いModel(List)の中からparams:idを探し出す
  end

private

def list_params
	params.require(:list).permit(:title, :body)
end

end
