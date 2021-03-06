### IPアドレスとポート番号
***
#### IPアドレス
- インターネットに接続されたコンピューターを特定→データの行き先を管理する為に利用されている識別番号
- インターネットにおいて __IPアドレスはたった１つ__ だけ！→住所みたいなもの
- 住所を指定することで特定のコンピューターへ接続できる
- __※コンピューターが提供するサービスまでは指定できない__
#### ポート番号
- コンピューターの内部にある各サービスを識別するための番号→マンションでいう部屋番号
- コンピューターが提供するサービスを指定する
#### Webサーバーは80番
- ポート番号は「0~65535」まっでの数字で範囲によって用途が決められている
- サービスによってはポート番号を独自に決めることができる
- 一般的にWebサーバー(HTTP)であれば80番、などとポート番号が決まっている
- ポート番号でサービスを識別できる
****
### URLとドメイン
#### URL(Uniform Resourse Locator)
- URLはWebサイトの場所を示す際に用いられることが多い→「アドレス」「Webアドレス」とも呼ばれる
- 他にインターネット・LANなどのネットワーク上にあるデータやファイルの場所・取得方法を指定するために利用される
- e.g. http://(ファイルを取得する方法)/example.com(ファイルの取得先のサーバー)/test.html(取得するファイル名)
#### ドメイン
- 覚えやすいようにIPアドレスの別名として利用されている文字列
- IPアドレス同様一意であり、世界中において同じドメイン名は１つとして存在しない
***
### DNS
- ドメインを利用してコンピューターへ接続する際は、ドメインをIPアドレスへと変換する必要がある
#### ドメインとIPアドレスの変換
- DNS(Domain Name System)→ドメインをIPアドレスへと変換する仕組み
- __DNSサーバー__→DNSのサービスを提供するサーバ
‐ 電話帳と似た仕組みで、ドメインとIPアドレスが紐づいて管理されている→DNSを利用することでドメインからIPアドレスを知ることが出来る
- 2016年時点で世界のドメイン登録数は3億2000万ほど。複数のDNSサーバーがツリー上の階層構造で分散処理し、ドメインを効率よく処理している
#### IPアドレスの問い合わせ
- URLにドメインが利用されている場合→DNSサーバーへIPアドレスの問い合わせ→取得したIPアドレスをもとにWebサーバーへ接続
#### HTTP
- クライアント(Webブラウザ)とサーバー(Webサーバー)間においてWebコンテンツと送受信するためのプロトコル
#### クライアントとサーバー間のやりとり
1. Webブラウザのアドレス欄にURLを入力、あるいはWebサイト内のリンクをクリック
2. Webブラウザより要求を受け取ったWebサーバーは要求内容を解析
3. 解析した結果より、要求されたデータをWebブラウザへと返答
4. WebブラウザはWebサーバーより受け取ったデータを解析し、Webページとして表示
- 2と4にHTTPが利用されている
- データのやりとりにおける要求と応答のみを決めている









