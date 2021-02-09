namespace :deploy do
  namespace :rake do
    desc "Invoke rake task"
    task :invoke do
      on roles(:all), in: :sequence, wait: 5 do
        within current_path do
          execute(:rake, "RAILS_ENV=production #{ENV['task']}")
        end
      end
    end
  end
end