# Rubyのバージョンを指定
FROM ruby:3.2.2

# 作業ディレクトリを設定
WORKDIR /RoutineRing

# 必要なファイルをコンテナにコピー
COPY Gemfile /RoutineRing/Gemfile
COPY Gemfile.lock /RoutineRing/Gemfile.lock

# Bundlerを使ってGemをインストール
RUN bundle install

# ホストの残りのアプリケーションコードをコンテナにコピー
COPY . /RoutineRing

# コンテナを起動するためのデフォルトコマンドを指定
CMD ["rails", "server", "-b", "0.0.0.0"]
