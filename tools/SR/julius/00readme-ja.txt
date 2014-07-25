======================================================================
                  Large Vocabulary Continuous Speech
                          Recognition Engine

                                Julius

                                                (Rev 1.0   1998/02/20)
                                                (Rev 2.0   1999/02/20)
                                                (Rev 3.0   2000/02/14)
                                                (Rev 3.1   2000/05/11)
                                                (Rev 3.2   2001/06/18)
                                                (Rev 3.3   2002/09/12)
                                                (Rev 3.4   2003/10/01)
                                                (Rev 3.4.1 2004/02/25)
                                                (Rev 3.4.2 2004/04/30)
                                                (Rev 3.5   2005/11/11)
                                                (Rev 3.5.1 2006/03/31)
                                                (Rev 3.5.2 2006/07/31)

 Copyright (c) 1991-2006 京都大学 河原研究室
 Copyright (c) 1997-2000 情報処理振興事業協会(IPA)
 Copyright (c) 2000-2005 奈良先端科学技術大学院大学 鹿野研究室
 Copyright (c) 2005-2006 名古屋工業大学 Julius開発チーム
 All rights reserved

======================================================================

Julius-3.5.2
=============

Julius-3.5.2 では，Windowsでの性能改善，問題の修正，単語グラフに
関する修正と拡張が行われました．以前のバージョンをお使いの方は
このバージョンの利用を推奨します．

変更点を以下にまとめます．

- Windows コンソールでの動作の大幅改善
   - DirectSound サポート (cygwin / mingw)
   - 入力のスレッド化 (portaudio API 使用)
   - 最新の MinGW 環境(5.0.2) に対応
- 単語グラフの精度改善
   - 調整用オプション： -graphcut, -graphboundloop, -graphsearchdelay
- 第1パスで単語トレリスのかわりに単語グラフを出力可能になった
- バグ修正
- 実装の改善

すべての変更点は Release-ja.txt にまとめられていますので，ご覧下さい．
なお，単語グラフの正確さと精度は改善されましたが，通常の認識精度と速度
は前バージョンと同じです．

Windows で DirectSound を使用した Julius をコンパイルするには，
DirectX のヘッダがインストールされている必要があります．
無い場合， configure スクリプトが自動的に古い（性能の低い）ドライバ
を使用します．インストールの詳細については Web のインストールマニュア
ルをご覧下さい．


ファイルの構成
===============

	00readme-ja.txt		最初に読む文書（このファイル）
	LICENSE.txt		ライセンス条項
	Release-ja.txt		リリースノート/変更履歴
	configure		configureスクリプト
	configure.in		
	Sample.jconf.ja		Julius用jconfファイルサンプル
	Sample-julian.jconf.ja	Julian用jconfファイルサンプル
	julius/			Julius/Julian 3.5.2 本体ソース
	libsent/		Julius/Julian 3.5.2 ライブラリソース
	adinrec/		録音ツール adinrec
	adintool/		音声録音/送受信ツール adintool
	gramtools/		文法作成ツール群
	jcontrol/		サンプルネットワーククライアント jcontrol
	mkbingram/		バイナリN-gram作成ツール mkbingram
	mkbinhmm/		バイナリHMM作成ツール mkbinhmm
	mkgshmm/		GMS用音響モデル変換ツール mkgshmm
	mkss/			ノイズ平均スペクトル算出ツール mkss
	support/		コンパイル用スクリプト
	olddoc/			3.2以前の変更履歴


ドキュメントについて
=====================

・ドキュメント

	すべての関連ドキュメントはJulius の Web ページ上で公開しています．
	チュートリアルから，様々な使用方法，各機能の紹介，制限事項など
	に関する文書がありますので，そちらをご一読下さい．
	ホームページ：http://julius.sourceforge.jp/

・最新版について

	Release-ja.txt に以前のバージョンからの変更点がまとめられてい
	ます．変更点の詳細については Release-ja.txt をご覧下さい．

・オンラインマニュアル

	Julius，Julian および関連ツールのオンラインマニュアルは，
	ソースからコンパイルする際に自動的にシステムにインストールされます．
	また，それぞれのソースディレクトリにテキスト形式のマニュアルが
	置いてありますので，そちらもご覧ください．
	  00readme-ja.txt：テキスト形式
	  *.man.ja: MAN形式

・ライセンス

	Julius/Julian はフリーのオープンソースソフトウェアです．
	私的用途・学術用途・商用を含め，利用に関して特に制限はありません．
	許諾については同梱の文書 "LICENSE.txt" をご参照下さい．


ホームページについて
=====================

Julius/Julian の最新版の公開やドキュメントの整備，掲示板・ユーザML等に
関する情報は，以下のサイトにまとめられています．ご活用ください．

	http://julius.sourceforge.jp/

以上
