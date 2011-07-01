require File.expand_path('../config/boot.rb', __FILE__)
require 'padrino-core/cli/rake'
PadrinoTasks.init

desc 'App setup'
task :setup => :"ar:migrate" do
  @boxcar = Boxcar.find :first
  unless @boxcar
    shell.say "Setup your Boxcar account information"
    @boxcar = Boxcar.new
    @boxcar.email = shell.ask 'Please enter your email address to Boxcar:'
    @boxcar.password = shell.ask 'Please enter your password to Boxcar:'
    @boxcar.save
  end
  shell.say "Setup complete"
end
