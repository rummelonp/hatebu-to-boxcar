# -*- coding: utf-8 -*-
class Hatebu < Padrino::Application
  register ScssInitializer
  register Padrino::Mailer
  register Padrino::Helpers

  enable :sessions

  def boxcar
    @boxcar ||= Boxcar.find :first
  end

  def boxcar_api
    @boxcar_api ||= BoxcarAPI::User.new boxcar.email, boxcar.password
  end

  post :index do
    @hook = Hook.create params
    case @hook.status
    when 'star'
      message = "#{@hook.title} #{@hook.quote}"
      title = "id:#{@hook.username}: #{@hook.color} star"
      source = @hook.permalink
      boxcar_api.notify message, title, nil, source
    when 'id_call'
      message = "#{@hook.title} #{@hook.comment}"
      title = "id:#{@hook.username}: id call"
      source = @hook.permalink
      boxcar_api.notify message, title, nil, source
    end
  end
end
