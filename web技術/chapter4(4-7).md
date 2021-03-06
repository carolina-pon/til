### css(Cascading Style Sheets)
***
- HTMLやXMLの表示方法(体裁)を表現する記述→スタイルシートと呼ばれる
- HTML4.0以降からCSSで文書構造と体裁の記述の分離が推奨されている
#### HTMLの体裁を記述
- CSSがなかった頃、HTML内で特定箇所の文字の大きさ、色などを変更したいときはfontタグ等で表示方法を指定していた
- 凝った表示にしようとすると文書の構造の記述と体裁が入りまじり記述が複雑に…
- CSSの登場で「見出しタグの部分だけ青色にする」などの表示ルールを指定可能
- 体裁の記述を外部に切り出してHTMLを文書構造の記述のみのシンプルな内容に！
#### Webサイト内での利用
- CSSはHTML内に直接書き込みもおｋ
- 別ファイルにしておくことで複数のHTMLで同じCSSを使いまわすことも可能
#### クライアントごとにデザインを変える
- CSSとHTMLファイルを別にしておくことで、CSSの変更のみで様々なクライアントに適したデザインに対応できる
***
### スクリプト言語
***
#### ECMAscript
- __JavaScript__ はFirefoxの開発で有名なMozilla FoundationとMicrosoftがそれぞれで実装を進めていた
  - ECMAインターナショナルがJavaScriptを標準化し、ECMAscriptを定めた
- 現在はJavaScriptというと(=ECMAscript)　多くのブラウザがECMAscriptに対応している
- 最近ではサーバーサイド・スクリプトとしても利用される
***
- __Perl・Ruby・PHP・Python__ サーバーサイド・スクリプトの開発に利用される
  - Perl→文法の自由度が高く多くの人が使いやすい
  - Python→読みやすく簡潔なプログラムを書くことが目的
  - PHP→Webで利用することを想定し作られた(CGIで呼び出すのではなく、HTMLに直接記述してもサーバーサイド・スクリプトとして使える)
  - Ruby→オブジェクト指向プログラミングに向いている
***
### DOM(Document Object Model)
***
#### HTMLやXML文書を扱うための手法(API)
- DOMを使用するとプログラムからHTMLやXMLの各要素を容易に参照・制御できる
- 現在ではほとんどのWebブラウザがDOMを実装している
  - Webページ上に埋め込まれたスクリプトやWebブラウザに実装された機能などからWebページ上の内容読み取り・編集が容易となっている
- Webブラウザに限らず、DOMが実装されている環境なら同じようにHTMLやXMLを扱える
  - Webブラウザ・サーバー間のXML文書でのデータやりとりを容易にできる
- DOMはW3Cで標準化され、Level.1~3まで勧告されている
  - Level.1 XML1.0とHTML4.0xへの対応
  - Level.2 XML1.0の拡張とXHTML1.0、スタイルシートのサポートなどの追加
  - Level.3 XML1.0の拡張とDOMツリーの読み書き機能などの追加
#### 対象となる文書を階層構造として扱う
- DOMでは、 __対象となる文書の各要素を抽出し、それらを階層構造として扱う__
- この階層構造は文書の最上位の要素を頂点(根)とし、それぞれの下位の要素が木の枝のように分かれていく木構造(ツリー構造)となっている
- DOMにおける木構造を __DOMツリー__ 呼ばれる
- 木構造の枝葉の部分は「ノード」と呼ばれ、DOMではこのノードをたどっていくことで目的のデータにアクセス→参照・編集を行う
- 対象の文章の量が多いほどそのぶんDOMツリーも大きくなる→処理に時間がかかってしまう難点あり
***
### JSON(JavaScript Object Notation)
***
- 構造可したデータを表すためのデータ記述言語の一種
- 名前にJavaScriptとあるが、書式がJSに従っているだけでJS専用ではない/JS以外の多くのプログラミング言語がJSONの読み書きに対応している
#### データ構造を表すのに使われる
- JSONを利用することでデータを木構造で表現することができる→XMLと似ているが、テキストにタグをつけデータ構造を表すのと違い、データを階層的に並べることで構造を表現する
  - XML
    - データとして文字列しか表すことができない
    - 全ての情報にタグを付ける必要があるため、データサイズが大きくなりがち
    - テキストの任意の場所にタグ付けができる
  - JSON
    - データとして文字列以外に、数値や空を意味するデータなどを扱うこともある
    - データを括弧で囲んで構造を表すので、データファイルは小さめ
    - タグによるマーク付けがないため、人間には読みにくいデータとなる
#### Web上でのデータのやりとりによく使われる
- JSONはJSの書式に従っている→JSで書かれたプログラミングではJSONをそのままJSとして読み込み可能(※XMLのようにDOMを利用する必要なし)
- XMLよりもデータが小さく、その分ネットワークの転送速度が速くなる
- JSがよく利用されるWebの世界では選択されやすいデータ形式！
    







