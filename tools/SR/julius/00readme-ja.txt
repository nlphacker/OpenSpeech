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

 Copyright (c) 1991-2006 ���s��w �͌�������
 Copyright (c) 1997-2000 ��񏈗��U�����Ƌ���(IPA)
 Copyright (c) 2000-2005 �ޗǐ�[�Ȋw�Z�p��w�@��w ���쌤����
 Copyright (c) 2005-2006 ���É��H�Ƒ�w Julius�J���`�[��
 All rights reserved

======================================================================

Julius-3.5.2
=============

Julius-3.5.2 �ł́CWindows�ł̐��\���P�C���̏C���C�P��O���t��
�ւ���C���Ɗg�����s���܂����D�ȑO�̃o�[�W���������g���̕���
���̃o�[�W�����̗��p�𐄏����܂��D

�ύX�_���ȉ��ɂ܂Ƃ߂܂��D

- Windows �R���\�[���ł̓���̑啝���P
   - DirectSound �T�|�[�g (cygwin / mingw)
   - ���͂̃X���b�h�� (portaudio API �g�p)
   - �ŐV�� MinGW ��(5.0.2) �ɑΉ�
- �P��O���t�̐��x���P
   - �����p�I�v�V�����F -graphcut, -graphboundloop, -graphsearchdelay
- ��1�p�X�ŒP��g�����X�̂����ɒP��O���t���o�͉\�ɂȂ���
- �o�O�C��
- �����̉��P

���ׂĂ̕ύX�_�� Release-ja.txt �ɂ܂Ƃ߂��Ă��܂��̂ŁC�����������D
�Ȃ��C�P��O���t�̐��m���Ɛ��x�͉��P����܂������C�ʏ�̔F�����x�Ƒ��x
�͑O�o�[�W�����Ɠ����ł��D

Windows �� DirectSound ���g�p���� Julius ���R���p�C������ɂ́C
DirectX �̃w�b�_���C���X�g�[������Ă���K�v������܂��D
�����ꍇ�C configure �X�N���v�g�������I�ɌÂ��i���\�̒Ⴂ�j�h���C�o
���g�p���܂��D�C���X�g�[���̏ڍׂɂ��Ă� Web �̃C���X�g�[���}�j���A
���������������D


�t�@�C���̍\��
===============

	00readme-ja.txt		�ŏ��ɓǂޕ����i���̃t�@�C���j
	LICENSE.txt		���C�Z���X����
	Release-ja.txt		�����[�X�m�[�g/�ύX����
	configure		configure�X�N���v�g
	configure.in		
	Sample.jconf.ja		Julius�pjconf�t�@�C���T���v��
	Sample-julian.jconf.ja	Julian�pjconf�t�@�C���T���v��
	julius/			Julius/Julian 3.5.2 �{�̃\�[�X
	libsent/		Julius/Julian 3.5.2 ���C�u�����\�[�X
	adinrec/		�^���c�[�� adinrec
	adintool/		�����^��/����M�c�[�� adintool
	gramtools/		���@�쐬�c�[���Q
	jcontrol/		�T���v���l�b�g���[�N�N���C�A���g jcontrol
	mkbingram/		�o�C�i��N-gram�쐬�c�[�� mkbingram
	mkbinhmm/		�o�C�i��HMM�쐬�c�[�� mkbinhmm
	mkgshmm/		GMS�p�������f���ϊ��c�[�� mkgshmm
	mkss/			�m�C�Y���σX�y�N�g���Z�o�c�[�� mkss
	support/		�R���p�C���p�X�N���v�g
	olddoc/			3.2�ȑO�̕ύX����


�h�L�������g�ɂ���
=====================

�E�h�L�������g

	���ׂĂ̊֘A�h�L�������g��Julius �� Web �y�[�W��Ō��J���Ă��܂��D
	�`���[�g���A������C�l�X�Ȏg�p���@�C�e�@�\�̏Љ�C���������Ȃ�
	�Ɋւ��镶��������܂��̂ŁC�����������ǉ������D
	�z�[���y�[�W�Fhttp://julius.sourceforge.jp/

�E�ŐV�łɂ���

	Release-ja.txt �ɈȑO�̃o�[�W��������̕ύX�_���܂Ƃ߂��Ă�
	�܂��D�ύX�_�̏ڍׂɂ��Ă� Release-ja.txt �������������D

�E�I�����C���}�j���A��

	Julius�CJulian ����ъ֘A�c�[���̃I�����C���}�j���A���́C
	�\�[�X����R���p�C������ۂɎ����I�ɃV�X�e���ɃC���X�g�[������܂��D
	�܂��C���ꂼ��̃\�[�X�f�B���N�g���Ƀe�L�X�g�`���̃}�j���A����
	�u���Ă���܂��̂ŁC��������������������D
	  00readme-ja.txt�F�e�L�X�g�`��
	  *.man.ja: MAN�`��

�E���C�Z���X

	Julius/Julian �̓t���[�̃I�[�v���\�[�X�\�t�g�E�F�A�ł��D
	���I�p�r�E�w�p�p�r�E���p���܂߁C���p�Ɋւ��ē��ɐ����͂���܂���D
	�����ɂ��Ă͓����̕��� "LICENSE.txt" �����Q�Ɖ������D


�z�[���y�[�W�ɂ���
=====================

Julius/Julian �̍ŐV�ł̌��J��h�L�������g�̐����C�f���E���[�UML����
�ւ�����́C�ȉ��̃T�C�g�ɂ܂Ƃ߂��Ă��܂��D�����p���������D

	http://julius.sourceforge.jp/

�ȏ�
