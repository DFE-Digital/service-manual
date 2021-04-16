# rubocop:disable Metrics/BlockLength
Rails.application.routes.draw do
  mount Flipflop::Engine => '/features' if Rails.env.development?

  get '/pages/:page', to: 'pages#show'

  get '/manual/search', to: 'manual#search'
  get '/manual/preview/documentation/:doc_id', to: 'manual#documentation'
  get '/manual/preview/item/:item_id', to: 'manual#item'
  get '/manual/preview/section/:section_id', to: 'manual#section'
  get '/manual/preview/area/:area_id', to: 'manual#area'
  get '/manual/preview/home/', to: 'home#index'

  get '/documentation/:doc_uri', to: 'manual#documentation'
  get '/manual/:area_uri/:section_uri/:item_uri', to: 'manual#item'
  get '/manual/:area_uri/:section_uri', to: 'manual#section'
  get '/manual/:area_uri', to: 'manual#area'

  get '/status', to: 'status#index'

  get '/404', to: 'errors#not_found', via: :all
  get '/422', to: 'errors#unprocessable_entity', via: :all
  get '/500', to: 'errors#internal_server_error', via: :all

  root to: 'home#index'
end
# rubocop:enable Metrics/BlockLength
