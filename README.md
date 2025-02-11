
## 動作確認環境

- Ruby 3.4.1
- bundler 2.6.3

## インストール

```sh
bundle install
```

## Build Instructions

To build the site, run:

```sh
# build
bundle exec jekyll build

# local server
bundle exec jekyll serve
```

### 新しい記事の作成

以下のコマンドを実行して、新しい記事のマークダウンファイルを作成します。

```sh
ruby _scripts/create_post.rb 'Post Title'
```

これにより、`_posts` ディレクトリに新しい記事のファイルが作成されます。
