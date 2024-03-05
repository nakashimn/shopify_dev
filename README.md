## shopify_dev

概要：shopify開発用のコンテナ

---

### Preparing

---

### How to connect to shopify store

1. 下記コマンドを実行しthemeのディレクトリに移動する

```
> cd /workspace/theme/dev
```

2. 下記コマンドを実行しShopifyPartnersのログイン画面を立ち上げる
```
> shopify theme dev --store [StoreURL]
```

3. ブラウザ上でログインページが表示されるので適切なユーザーでログインする

4. "このサイトにアクセスできません","127.0.0.1で接続が拒否されました。"の表示が出た場合、下記の対応を実施する

    1. アクセス先のURL(http://127.0.0.1:3456/?code=[xxx])をコピーする

    2. コンテナ内で別のターミナルを立ち上げ、下記コマンドを実行する
        ```
        > wget "http://127.0.0.1:3456/?code=[xxx]" -O /dev/null
        ```

5. ログイン完了後、Syncing themeが実行されるのを確認する

6. ブラウザから開発用ページ(http://127.0.0.1:9292)にアクセスする

---
