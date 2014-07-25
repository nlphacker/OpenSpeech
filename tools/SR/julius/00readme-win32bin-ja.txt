======================================================================
                  Large Vocabulary Continuous Speech
                          Recognition Engine

                                Julius

                                                (Rev 3.5   2005/11/11)
                                                (Rev 3.5.1 2006/03/31)
                                                (Rev 3.5.2 2006/07/31)

 Copyright (c) 1991-2006 京都大学 河原研究室
 Copyright (c) 1997-2000 情報処理振興事業協会(IPA)
 Copyright (c) 2000-2005 奈良先端科学技術大学院大学 鹿野研究室
 Copyright (c) 2005-2006 名古屋工業大学 Julius開発チーム
 All rights reserved

======================================================================

このパッケージについて
=======================

これは Julius-3.5.2 の Windows用実行バイナリ配布パッケージです．
Windows のコンソールモードで動作します．

Julius-3.5.2 は Julius-3.5.1, 3.5 と同様に使用できます．
音声認識実行キットなど，既存の Julius 実行環境をお持ちの方は，このアー
カイブの bin/ 以下にある exe ファイルを，以前のバージョンのものに対し
て上書きしてください． 

過去のバージョンからの変更点など，バージョン 3.5.2 について
詳しくは同梱の 00readme-ja.txt をご覧下さい．


実行環境
=========

Windows2000以降の多くの Windows で動作します．
マイク入力の認識には，DirectSound がインストールされており，かつ
16bit, 16kHz, モノラルで録音できる環境が必要です．
（認識性能はデバイスの録音品質や個人性に大きく左右されます）

認識用文法の作成には perl が必要です．
cygwin, MinGW + MSYS および Active perl での動作を確認しています．

コンパイルは Windows XP SP2 + MinGW (5.0.2) で行いました．


ファイルの構成
================

実行バイナリは bin/ ディレクトリ以下に収められています．

    [本体]
    julius.exe	    Julius-3.5.2 (高速版)
    julian.exe	    Julian-3.5.2 (高速版)
        (*-std	    高精度版)
	(*-graphout グラフ出力版)

    [ツール]
    mkbingram.exe   N-gram言語モデルをバイナリ形式に変換する
    mkbinhmm.exe    HTK形式のHMM定義ファイルをバイナリ形式に変換する
    mkgshmm	    Gaussian Mixture Selection のための GSHMM を作る
    mkss.exe	    スペクトルサブトラクション用のノイズスペクトルを
		    マイク入力から計算・保存する

    [ユーティリティ]
    adinrec.exe	    マイク入力を切り出してファイルに記録する．
    adintool.exe    音声入力フロントエンド（ネットワーク入力用）
    jcontrol.exe    モジュールモード用のサンプルクライアント
    
    [認識用文法作成ツール]
    mkdfa.pl	    文法コンパイラ
    accept_check.exe 入力文に対する受理/非受理をチェックするツール
    generate.exe    ランダム文生成器
    yomi2voca.pl    ひらがな→音素系列変換

    [認識結果の評価ツール]
    scoring/	    認識結果集計ツール


ドキュメント
=============

Julius-3.5.2 の特徴や変更点，最新のオンラインマニュアルについては，
同梱の以下の文書をご覧ください．

    00readme-ja.txt	    はじめにお読み下さい
    LICENSE.txt		    利用許諾
    Release-ja.txt          リリースノートと変更履歴
    Sample.jconf.ja         Julius 用サンプル jconf ファイル
    Sample-julian.jconf.ja  Julian 用サンプル jconf ファイル
    doc/                    テキストマニュアルと文書すべて


チュートリアルや様々な使用方法，各機能の紹介，Julian用の認識用文法の書
き方，コンパイルの方法など，様々なドキュメントを
Julius の Web ページで公開していますので，そちらを是非ご一読下さい．

    Julius Webページ：http://julius.sourceforge.jp/


実行キットについて
===================

Julius/Julian は単体では動きません．動作させるには言語モデルと音響モデ
ルが必要です．とりあえず動作に必要なものを集めたキットがホームページで
公開されています．詳しくは以下をご覧下さい．

    http://julius.sourceforge.jp/download.htm

