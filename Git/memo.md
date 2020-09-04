# Gitに関するメモ
- Gitはファイルのバージョン管理システム
- 登場人物はワークツリー・ステージ・リポジトリ
# 覚えとこー！
- git config --global alias.ci(省略名つける) commit ciと打てばcommitの意味になる
- git pullはfetchとmerge同時にできて便利だけど、今いるブランチに統合されるので注意！
- git status ワークツリー⇔ステージ　リポジトリ⇔ステージ　の間で変更された内容が見れる
- git diff addする前の変更差分確認
- git diff --staged addしたあとの変更差分確認
- git checkout -- ファイル名 or dir名 ファイルの変更を取り消す(.つけたら全部)
- git reset HEAD ファイル ステージに追加した変更を取り消す(.つけたら全部)
  - resetだけだとリモートのファイルは変更されないので、そこも変更したいならgit reset…のあとにｎgit checkout…で元通りに 
- git branch -m ブランチ名　自分が作業しているブランチ名変更
- git branch -d ブランチ名　ブランチ削除
- git commit --amend 直前のコミットをやり直したい
- git rebase -i コミットID　複数のコミットをやりなおす
- git rebase -i コミットID→2つ目以降をsquashに書き換えると、そのコミットを直前のコミットと1つにする

# ブランチの運用
- masterブランチはリリース用ブランチ
- 開発はトピックブランチを作成して進めるのが基本

# コンフリクトしたら
<<HEAD ~ == :HEADの変更分  
== ~ >>feature :featureの変更分
1. ファイルの内容を書き換える
2. << == >> の記述を削除する　でおｋ

# チーム開発
- プルリクエスト/自分で変更したコードをリポジトリに取り込んでもらえるよう依頼する→レビューしてもらう機能
1. masterブランチを最新に更新
2. ブランチ作成
3. ファイルを変更
4. 変更をcommit
5. githubにpush
6. チームメイトにプルリクエストを送る
7. コードレビュー
8. プルリクエストをmerge

# github flow

1. ブランチ作成
2. ファイル変更、commit
3. 同盟のブランチをgithubへpush
4. pull request
5. code review　masterブランチにマージ
6. masterブランチをデプロイ
- masterブランチは常にデプロイできる状態に！

# rebase 変更を統合する際に履歴をきれいに整えるために使う
- git rebase ブランチ名 
- 履歴が一直線になる

# pull
- merge型　マージコミットが残る　記録を残したい場合
- rebase型　マージコミットが残らない　githubの内容を取得したいだけの場合
- git config --global pull.rebase true　デフォでpullがリベース型になる


# tag
- git tag -a タグ名 -m "メッセージ"
- e.g. git tag -a 20200901_01 -m "version20200901_01"
- git show tagの情報を表示 

# stash
- 作業中の変更を一時避難できる
- git stash で一時避難
- git stash apply で復元
- git stash drop スタッシュ名 (stash@{0}など)
- git stash clear 全作業を削除





