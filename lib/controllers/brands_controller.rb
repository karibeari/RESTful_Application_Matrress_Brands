class BrandController < Sinatra::Base
  set :views, Proc.new { File.join(root, "../views")}

  get '/brands' do
    @brands = Brand.all
    erb :index
  end

  get '/brands/new' do
    erb :new
  end

  post '/brands' do
    Brand.create(params)
    redirect '/brands'
  end

  get '/brands/:id/edit' do
    @brand = Brand.find(params[:id])
    erb :edit
  end

  get '/brands/:id' do
    @brand = Brand.find(params[:id])
    erb :show
  end

  patch '/brands/:id' do
    brand = Brand.find(params[:id])
    brand.update(name: params[:name])
    redirect '/brands'
  end

  delete '/brands/:id' do
    brand = Brand.find(params[:id])
    brand.destroy
    redirect '/brands'
  end

end
