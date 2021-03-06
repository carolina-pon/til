### HTTP/1.1のやりとり
***
#### HTTPキープアライブ
- HTTPにもバージョンがあり、現在最も普及しているのがHTTP1.1
- 1.0以前ではHTTPリクエストのたびにコネクション確立→閉じる を繰り返していて、無駄な通信が多かった
- 1.1以降ではコネクションを継続するという方法をとっていて、これを __HTTPキープアライブ__ と呼ぶ
- 1.1以降特に指定がない場合はこの機能が利用される
#### HTTPパイプライン
- HTTPレスポンスを待たずに複数のHTTPリクエストを送れる
- HTTPにおけるデータのやり取り効率化のため
***
### HTTP/2のやりとり
***
- 2.0以降Googleが提案したSPDY「スピーディ」と呼ばれる通信高速化プロトコルがベースで、高速化を担う部分は殆どがSPDYの機能を継承している
#### ストリームによる多重化
- 1.1以降HTTPパイプラインがサポートされたが、順番に処理をしていくため、残りのリクエストに待機時間が生じる→あまり効率的ではない
- 2.0以降「ストリーム」と呼ばれる仮想通信経路を複数生成、→それぞれのストリーム内で並行してリクエスト・レスポンスのやりとりが可能に
- 待機時間がなくなるのでより高速に効率よくデータのやり取りが可能に！
***
### HTTP/2での改良点
***
#### バイナリ形式の利用
- バイナリ形式→コンピューターが扱うためのデータ形式。テキスト形式はバイナリ形式を人間が読める形に変換したもの
- 1.1以前ではHTTPリクエスト・レスポンスのやりとりがテキスト形式だった
- 2.0以降ではバイナリ形式のフォーマット(1.1以前と違いテキストへの変換不要)→変換処理不要・Webブラウザ/サーバーへの負担軽減が可能に
#### ヘッダー圧縮
- 2.0以降 従来のテキスト形式ファイルデータ圧縮＋ヘッダー情報も圧縮が可能に
- 2.0以降では、HTTPリクエスト・レスポンスのヘッダー情報から、HPACKという圧縮形式で差分のみ送信ができる→データ転送量削減！
#### サーバープッシュ
- 2.0ではブラウザからのHTTPリクエスト内容をもとに、サーバー側で必要なファイルを事前に判断→ブラウザに送信することが可能
