======================================================================
                  Large Vocabulary Continuous Speech
                          Recognition Engine

                                Julius

                                                (Rev 3.5   2005/11/11)
                                                (Rev 3.5.1 2006/03/31)
                                                (Rev 3.5.2 2006/07/31)

 Copyright (c) 1991-2006 ���s��w �͌�������
 Copyright (c) 1997-2000 ��񏈗��U�����Ƌ���(IPA)
 Copyright (c) 2000-2005 �ޗǐ�[�Ȋw�Z�p��w�@��w ���쌤����
 Copyright (c) 2005-2006 ���É��H�Ƒ�w Julius�J���`�[��
 All rights reserved

======================================================================

���̃p�b�P�[�W�ɂ���
=======================

����� Julius-3.5.2 �� Windows�p���s�o�C�i���z�z�p�b�P�[�W�ł��D
Windows �̃R���\�[�����[�h�œ��삵�܂��D

Julius-3.5.2 �� Julius-3.5.1, 3.5 �Ɠ��l�Ɏg�p�ł��܂��D
�����F�����s�L�b�g�ȂǁC������ Julius ���s�����������̕��́C���̃A�[
�J�C�u�� bin/ �ȉ��ɂ��� exe �t�@�C�����C�ȑO�̃o�[�W�����̂��̂ɑ΂�
�ď㏑�����Ă��������D 

�ߋ��̃o�[�W��������̕ύX�_�ȂǁC�o�[�W���� 3.5.2 �ɂ���
�ڂ����͓����� 00readme-ja.txt �������������D


���s��
=========

Windows2000�ȍ~�̑����� Windows �œ��삵�܂��D
�}�C�N���͂̔F���ɂ́CDirectSound ���C���X�g�[������Ă���C����
16bit, 16kHz, ���m�����Ř^���ł�������K�v�ł��D
�i�F�����\�̓f�o�C�X�̘^���i����l���ɑ傫�����E����܂��j

�F���p���@�̍쐬�ɂ� perl ���K�v�ł��D
cygwin, MinGW + MSYS ����� Active perl �ł̓�����m�F���Ă��܂��D

�R���p�C���� Windows XP SP2 + MinGW (5.0.2) �ōs���܂����D


�t�@�C���̍\��
================

���s�o�C�i���� bin/ �f�B���N�g���ȉ��Ɏ��߂��Ă��܂��D

    [�{��]
    julius.exe	    Julius-3.5.2 (������)
    julian.exe	    Julian-3.5.2 (������)
        (*-std	    �����x��)
	(*-graphout �O���t�o�͔�)

    [�c�[��]
    mkbingram.exe   N-gram���ꃂ�f�����o�C�i���`���ɕϊ�����
    mkbinhmm.exe    HTK�`����HMM��`�t�@�C�����o�C�i���`���ɕϊ�����
    mkgshmm	    Gaussian Mixture Selection �̂��߂� GSHMM �����
    mkss.exe	    �X�y�N�g���T�u�g���N�V�����p�̃m�C�Y�X�y�N�g����
		    �}�C�N���͂���v�Z�E�ۑ�����

    [���[�e�B���e�B]
    adinrec.exe	    �}�C�N���͂�؂�o���ăt�@�C���ɋL�^����D
    adintool.exe    �������̓t�����g�G���h�i�l�b�g���[�N���͗p�j
    jcontrol.exe    ���W���[�����[�h�p�̃T���v���N���C�A���g
    
    [�F���p���@�쐬�c�[��]
    mkdfa.pl	    ���@�R���p�C��
    accept_check.exe ���͕��ɑ΂����/��󗝂��`�F�b�N����c�[��
    generate.exe    �����_����������
    yomi2voca.pl    �Ђ炪�ȁ����f�n��ϊ�

    [�F�����ʂ̕]���c�[��]
    scoring/	    �F�����ʏW�v�c�[��


�h�L�������g
=============

Julius-3.5.2 �̓�����ύX�_�C�ŐV�̃I�����C���}�j���A���ɂ��ẮC
�����̈ȉ��̕������������������D

    00readme-ja.txt	    �͂��߂ɂ��ǂ݉�����
    LICENSE.txt		    ���p����
    Release-ja.txt          �����[�X�m�[�g�ƕύX����
    Sample.jconf.ja         Julius �p�T���v�� jconf �t�@�C��
    Sample-julian.jconf.ja  Julian �p�T���v�� jconf �t�@�C��
    doc/                    �e�L�X�g�}�j���A���ƕ������ׂ�


�`���[�g���A����l�X�Ȏg�p���@�C�e�@�\�̏Љ�CJulian�p�̔F���p���@�̏�
�����C�R���p�C���̕��@�ȂǁC�l�X�ȃh�L�������g��
Julius �� Web �y�[�W�Ō��J���Ă��܂��̂ŁC������𐥔񂲈�ǉ������D

    Julius Web�y�[�W�Fhttp://julius.sourceforge.jp/


���s�L�b�g�ɂ���
===================

Julius/Julian �͒P�̂ł͓����܂���D���삳����ɂ͌��ꃂ�f���Ɖ������f
�����K�v�ł��D�Ƃ肠��������ɕK�v�Ȃ��̂��W�߂��L�b�g���z�[���y�[�W��
���J����Ă��܂��D�ڂ����͈ȉ��������������D

    http://julius.sourceforge.jp/download.htm

