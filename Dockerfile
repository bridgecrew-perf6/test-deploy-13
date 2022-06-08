# ベースイメージの取得
FROM ubuntu:20.04

# メタデータの登録
LABEL maintainer="作成者の氏名"
LABEL version="1.0"
LABEL description="DockerFileのテスト Apacheサーバー起動"

# 必要パッケージのインストール
RUN apt update
RUN apt install -y tzdata
RUN apt install -y apache2

# ポート開放
EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]