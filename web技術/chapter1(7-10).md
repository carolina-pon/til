### 静的ページと動的ページ
***
#### 静的ページ
- 何度アクセスしても同じものが表示されるWebページ
- e.g.企業・団体の紹介サイト等の情報を提供するサイト
  - いつも同じ情報を表示させる必要があるため
- HTMLのみで記述されている
- もとは研究資料閲覧の為に開発されたので静的ページで十分→Web普及で閲覧以外の豊かな表現が求められるように
#### 動的ページ
- アクセスしたときの状況に応じて異なる内容が表示されるページ
- e.g.Google・Yahoo!などの検索サイトの結果表示・SNS・掲示板など
  - ユーザーの入力した検索文字列に対し、毎回最新の検索結果の情報を返信する
***
#### 動的ページの仕組み
- __CGI(Common Gateway Interface)__
  - WebサーバーがWebブラウザからの要求に応じてプログラムを起動させるための仕組み
  - __動的ページ__ を利用するとき
    - __Webブラウザ__ はCGIが用意された場所を示すURLへアクセス
    - __Webサーバー__ が要求受信
    - CGIによってプログラムが起動する
    - プログラムはWebブラウザから送信されたデータ・Webサーバー自身の持っているデータ等から __HTMLファイル__ を作り出す  
    - Webサーバーを通しWebブラウザへ送信！！  
- __サーバーサイド・スクリプト__
  - CGIから呼び出されるプログラム
  - 基本的にどんなプログラミング言語で記述してもOK
  - 文字列の扱いに長けた __スクリプト言語__ で記述が一般的
    - e.g.Ruby・Python、PHP、JSとか
- __クライアントサイド・スクリプト__
  - HTMLに埋め込まれ、Webブラウザによって読み込まれる際に実行される
  - Webブラウザの設定によっては埋めこまれたプログラムが動かないことも・・・
    - e.g.JS
***
#### Webの標準化
- 標準化ってなんなん？
  -   Webの発展に伴いさまざまな機能拡張や新技術が開発されているが、
  「どのWebブラウザでも同じようにWebページが表示される」状態を保つために規格を決める作業のこと  
- 標準化をすすめる団体 __W3C(World Wide Web Consortium)__
  - Webの生みの親ティムさんが創設！
  - HTML・CSS・XML(Extensible Markup Language)・XHTML(Extensible HyperText Markup Language)などの標準化を行っている
  - W3Cが標準化したものは「勧告」という形で発表される→強制ではないが、ほとんどのWebサイトが準拠している
***
#### Webの思想設計
__標準化したもの以外にも、Web技術の世界では設計における思想がいくつかある__
- REST(REpresentational State Transfer)→４つの原則からなるシンプルな設計を指す
  - __RESTfulなシステム__ →RESTの原則に従って設計されたシステム
    - 「前回のやりとり結果」を保持する必要がない→シンプルな構造
    - やりとりの方法・情報の示し方が統一されている/一つの情報に別の情報をリンクさせられる
    - 上記によりRESTfulなシステム同士なら情報連携が円滑に！
*** 
#### セマンティックWeb→Webページの情報に意味(セマンティック)を付け加えたもの
- __意味を付け加えるとどうなるん？？__
  - コンピュータが自律的に情報の意味を理解→処理できる
  - HTMLだと意味の付与ができない
    - セマンティックWebの世界ではWebページを※XMLという言語で構成する
    - XML文書の中にRDFという言語で記述
    - 言葉の相互関係などはOWLという言語で記述
    - 上記のような情報に関する意味を示す情報を __メタデータ__ と呼ぶ __※これらもW3Cで標準化が進められている__
  - セマンティックWebでできること
    - 情報を検索するときの精度を上げられる
    - Web中から特定の情報を集めて活用できる __※既存のWebページへのメタデータ付与作業を考えると、普及はまだ先かも・・・__










