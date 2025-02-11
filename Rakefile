# frozen_string_literal: true

namespace :jekyll do
  desc 'Start Jekyll in the background'
  task :start do
    pid = Process.spawn('bundle exec jekyll serve')
    puts "Jekyll started with PID: #{pid}"
    File.write('.jekyll_pid', pid)
  end

  desc 'Stop Jekyll'
  task :stop do
    if File.exist?('.jekyll_pid')
      pid = File.read('.jekyll_pid').to_i
      begin
        Process.kill('TERM', pid)
        puts 'Jekyll stopped.'
      rescue Errno::ESRCH
        puts 'Jekyll process not found.'
      ensure
        File.delete('.jekyll_pid')
      end
    else
      puts 'Jekyll is not running.'
    end
  end
end

desc 'Run RuboCop'
task :lint do
  sh 'bundle exec rubocop -A'
end
