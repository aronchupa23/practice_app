Rails.application.routes.draw do
  get 'todolists/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'top' => 'homes#top'
  # httmlメゾットtop=webサイトを閲覧するだけの時に使用
  # url 'top'にアクセスした際に"homes"コントロラーの"topアクションを呼び出す（アクションの前はシャープを使用する）"
  post 'todolists' =>'todolists#create'

  get 'todolists' => 'todolists#index'

  get'todolists/:id' => 'todolists#show', as:'todolist' #todolists/:id はURL形式でコーディングしなくてはならない
end
