class Hatebu < Padrino::Application
  register ScssInitializer
  register Padrino::Mailer
  register Padrino::Helpers

  enable :sessions

  post :index do
    @hook = Hook.create params
  end
end
