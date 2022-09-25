# README
## 初期設定
1. アプリケーションのビルド
```
docker compose build
```

2. DB作成
```
docker compose run --rm web rake db:create
```

3. Railsアプリケーション起動
```
docker compose up -d
```

Railsアプリケーションの終了
```
docker compose down
```

Railsコンテナの操作
```
docker-compose exec web bash
```