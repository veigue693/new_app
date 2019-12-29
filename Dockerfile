# 19.10.16現在最新安定版のイメージを取得
FROM ruby:2.6.5
ENV APP_ROOT=/new_app

# 必要なパッケージのインストール(基本的に必要になるはず。削除しない)
RUN apt-get update -qq && \
  apt-get install -y build-essential \
  libpq-dev \
  nodejs

# 作業ディレクトリの作成、設定
RUN mkdir $APP_ROOT
##作業ディレクトリ名をAPP_ROOTに割り当てて、以下を＄APP_ROOTで参照
WORKDIR $APP_ROOT

RUN gem install bundler

# ホスト側(ローカル)のGemfileを追加する(ローカルのGemfileは【3】で作成)
ADD ./Gemfile $APP_ROOT/Gemfile
ADD ./Gemfile.lock $APP_ROOT/Gemfile.lock


# Gemfileのbundle install
RUN bundle install
ADD . $APP_ROOT
