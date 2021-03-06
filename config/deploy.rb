# config valid for current version and patch releases of Capistrano
lock "~> 3.15.0"

set :application, "demo"
set :repo_url, "git@github.com:zooliet/rails61_capistrano_demo.git"

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, "/var/www/my_app_name"
set :deploy_to, "/home/deploy/#{fetch(:application)}"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml"

# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"
append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'public/system', 'vendor/bundle', '.bundle', 'public/uploads'

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
# set :keep_releases, 5

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure

##
set :rbenv_type, :user
set :rbenv_ruby, File.read('.ruby-version').strip
# set :rbenv_ruby, '3.0.0'
set :rbenv_custom_path, "/home/deploy/.rbenv"

##
set :puma_workers, 2
set :puma_preload_app, true
set :puma_init_active_record, true

set :nginx_config_name, "#{fetch(:application)}_#{fetch(:stage)}"
set :nginx_server_name, "144.126.220.127 rekcle.com www.rekcle.com"

# set :nginx_ssl_certificate, "/etc/ssl/certs/#{fetch(:nginx_config_name)}.crt"
set :nginx_ssl_certificate, "/etc/letsencrypt/live/rekcle.com/fullchain.pem"

# set :nginx_ssl_certificate_key, "/etc/ssl/private/#{fetch(:nginx_config_name)}.key"
set :nginx_ssl_certificate_key, "/etc/letsencrypt/live/rekcle.com/privkey.pem"
    
set :nginx_use_ssl, true
set :nginx_use_http2, true
