# Todo Application

シンプルで使いやすいTodoアプリケーションです。

## 機能

- Todoの作成、編集、削除
- ユーザー認証
- Todoの完了状態の管理

## 技術スタック

- Laravel 10.x
- PHP 8.x
- MySQL
- Docker

## セットアップ方法

1. リポジトリのクローン:
```bash
git clone [repository-url]
cd todo-app
```

2. 環境設定:
```bash
cp .env.example .env
```

3. Dockerコンテナの起動:
```bash
docker-compose up -d
```

4. 依存関係のインストール:
```bash
docker-compose exec app composer install
```

5. アプリケーションキーの生成:
```bash
docker-compose exec app php artisan key:generate
```

6. データベースのマイグレーション:
```bash
docker-compose exec app php artisan migrate
```

## 使用方法

1. ブラウザで http://localhost にアクセス
2. アカウントを作成してログイン
3. Todoの作成、管理を開始

## ライセンス

[MIT license](https://opensource.org/licenses/MIT)
