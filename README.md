# tech-blog
Zenn と Qiita の記事を管理する。

## 環境構築
下記を参照
- https://zenn.dev/shogo_wada_pro/articles/35db506b92caae#fn-3fcd-4
## 構成

```
root/
　├ .github/
　├ articles/  // Zennの記事
　├ book/  // Zennの本
　└ public/ // Qiitaの記事
　│　└ .remote/
　│
　└ .env  // qiitaのToken記載
```

## 記事の作成

### Zenn の記事作成
下記のコマンドで記事が作成される。

```sh
npm run add:zenn
```

### Qiita の記事作成
下記のコマンドで記事が作成される。

```sh
npm run add:qiita (記事のファイルのベース名)
```

## プレビュー

### Zenn の記事をプレビュー
下記のコマンドで記事が作成される。  
`http://localhost:8000`

```sh
npm run zenn
```

### Qiita の記事をプレビュー
下記のコマンドで記事が作成される。  
[`http://localhost:8000]`(http://[::1]:8001/)

```sh
npm run qiita
```

## 記事の投稿・編集
### Zenn
対象の記事を作成・編集し`main`ブランチにマージする。

### Qiita
対象の記事を作成・編集し`main`ブランチにマージする。  
[publisy.yml](.github/workflows/publish.yml)で投稿の設定をする。

下記のコマンドで投稿・編集される。
```sh
npm run publish (記事のファイルのベース名)
```
