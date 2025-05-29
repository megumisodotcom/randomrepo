FROM nginx:alpine

# デフォルトのnginx設定を削除
RUN rm /etc/nginx/conf.d/default.conf

# カスタムnginx設定を追加
COPY nginx.conf /etc/nginx/conf.d/

# 静的ファイルをコピー
COPY index.html /usr/share/nginx/html/

# ポート80を公開
EXPOSE 80

# nginxをフォアグラウンドで実行
CMD ["nginx", "-g", "daemon off;"] 