# frozen_string_literal: true

require 'date'

# 引数からタイトルを取得
if ARGV.length != 1
  puts "Usage: ruby create_post.rb 'Post Title'"
  exit
end

title = ARGV[0]
date = Date.today
filename = "_posts/#{date.strftime('%Y-%m-%d')}-#{title.downcase.gsub(' ', '-')}.md"

# マークダウンファイルの内容を作成
content = <<~CONTENT
  ---
  layout: default
  title: "#{title}"
  date: #{date.strftime('%Y-%m-%d %H:%M:%S %z')}
  categories:#{' '}
  - programming
  # - note
  # - report
  ---

  # #{title}

  Write your content here.
CONTENT

# ファイルを作成
File.write(filename, content)
puts "Created #{filename}"
