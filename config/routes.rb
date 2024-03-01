Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  root to: 'routines#index'  # トップページ（ルーティン一覧）
  get '/routines', to: 'routines#index', as: :routines  # ルーティン一覧
  get 'routines/new', to: 'routines#new', as: :new_routine  # ルーティン新規作成
  #post 'routines', to: 'routines#create'  # ルーティン作成処理
  #get 'routines/:id', to: 'routines#show', as: :routine  # ルーティン詳細
  #delete 'routines/:id', to: 'routines#destroy'  # ルーティン削除
  # Defines the root path route ("/")
  # root "posts#index"
end
