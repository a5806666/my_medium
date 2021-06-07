# MyMedium README
###### tags: `github` 
複数枚の写真を、位置情報つきで投稿できるサービスです。 就職活動用のポートフォリオとして制作致しました。

![](https://i.imgur.com/3Ovd1lX.png)

---

## 関連リンク
| タイトル　　　　　　　　　　　　| リンク　　　　　　　　　　　|
| --------------------------|:------------------------ |
| ホームページ　　　　　　　　　　|　[:link:][homepage]　　|
| 私のブログ（中国語）　　　　　　|　[:link:][blog]　　　　　　|
| 勉強したオンライン講座（中国語）|　[:link:][オンライン講座]　　|


[homepage]: https://whispering-citadel-92558.herokuapp.com/
[blog]: http://translate.google.com/translate?hl=en&sl=zh-CN&tl=ja&u=https%3A%2F%2Fhackmd.io%2F%407beedhBrQk2FjyAtSY5wxQ&sandbox=1
[オンライン講座]: http://translate.google.com/translate?hl=en&sl=zh-CN&tl=ja&u=https%3A%2F%2Fcampus.5xruby.tw%2Fp%2Fcoding

---

## 使用技術
* Ruby 2.6.7
* ruby on rails 6.1.3
* ubuntu 20.04
* postgreSQL 13.2
* Heroku
* GitHub
* Sourcetree
* Stimulus
* bulma
* AWS
    * S3
    * IAM 

---
## 機能一覧、使用したgemなど
* ユーザー登録機能、ログイン機能([devise](https://hackmd.io/nYCmlVBYTgGy4vYKYyr-Gw))
    * アカウント管理機能(devise)
        * パスワードの変更、ユーザー名を設定する、画像をアップロード([Active Storage](https://hackmd.io/@7beedhBrQk2FjyAtSY5wxQ/SyHnoXCwd))
    * 記事一覧機能
        * 記事を再編集．公開をキャンセル([AASM](https://github.com/aasm/aasm))、記事を削除([paranoia](https://github.com/rubysherpas/paranoia))
        * ページネーション機能([Kaminari](https://qiita.com/residenti/items/1ae1e5ceb59c0729c0b9))
    * 会員になる機能(**決済するだけです**)([braintree](https://developers.braintreepayments.com/start/overview))
* 記事を書く機能(AASM)
    * 画像をアップロード(Active Storage)
* コメント機能(Ajax)
* いいね機能(Ajax)
    * ホームページ(人気記事ランキング)
  
        