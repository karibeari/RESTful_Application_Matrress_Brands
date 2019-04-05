class Application < Sinatra::Base
  use Rack::MethodOverride

  use BrandController
end
