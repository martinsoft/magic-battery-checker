FasdUAS 1.101.10   ��   ��    k             l     ����  r       	  m      
 
 �   D / U s e r s / j o h n / L i b r a r y / S c r i p t s / b t s t a t 	 o      ����  0 btstatlocation btStatLocation��  ��        l    ����  r        m    ����   o      ���� $0 warningthreshold warningThreshold��  ��        l     ��������  ��  ��        l     ��  ��       Check mouse battery level     �   4   C h e c k   m o u s e   b a t t e r y   l e v e l      l     ��������  ��  ��        l    ����  I   �� ��
�� .sysoexecTEXT���     TEXT  b        o    	����  0 btstatlocation btStatLocation  m   	 
     � ! ! 2   Y O U R _ M O U S E _ S E R I A L _ N U M B E R��  ��  ��     " # " l    $���� $ r     % & % c     ' ( ' 1    ��
�� 
rslt ( m    ��
�� 
nmbr & o      ���� *0 mousebatterypercent mouseBatteryPercent��  ��   #  ) * ) l     ��������  ��  ��   *  + , + l   + -���� - Z    + . /���� . A     0 1 0 o    ���� *0 mousebatterypercent mouseBatteryPercent 1 o    ���� $0 warningthreshold warningThreshold / I   '�� 2 3
�� .sysonotfnull��� ��� TEXT 2 b    ! 4 5 4 b     6 7 6 m     8 8 � 9 9 2 Y o u r   m o u s e   b a t t e r y   i s   a t   7 o    ���� *0 mousebatterypercent mouseBatteryPercent 5 m      : : � ; ; : % .   P l e a s e   r e m e m b e r   t o   c h a r g e ! 3 �� <��
�� 
appr < m   " # = = � > > " M o u s e   B a t t e r y   L o w��  ��  ��  ��  ��   ,  ? @ ? l     ��������  ��  ��   @  A B A l     ��������  ��  ��   B  C D C l     �� E F��   E #  Check keyboard battery level    F � G G :   C h e c k   k e y b o a r d   b a t t e r y   l e v e l D  H I H l     ��������  ��  ��   I  J K J l     �� L M��   L E ?do shell script btStatLocation & " YOUR_KEYBOARD_SERIAL_NUMBER"    M � N N ~ d o   s h e l l   s c r i p t   b t S t a t L o c a t i o n   &   "   Y O U R _ K E Y B O A R D _ S E R I A L _ N U M B E R " K  O P O l     �� Q R��   Q 4 .set keyboardBatteryPercent to result as number    R � S S \ s e t   k e y b o a r d B a t t e r y P e r c e n t   t o   r e s u l t   a s   n u m b e r P  T U T l     ��������  ��  ��   U  V W V l     �� X Y��   X 7 1if keyboardBatteryPercent < warningThreshold then    Y � Z Z b i f   k e y b o a r d B a t t e r y P e r c e n t   <   w a r n i n g T h r e s h o l d   t h e n W  [ \ [ l     �� ] ^��   ] � �	display notification "Your keyboard battery is at " & keyboardBatteryPercent & "%. Please remember to charge!" with title "Keyboard Battery Low"    ^ � _ _" 	 d i s p l a y   n o t i f i c a t i o n   " Y o u r   k e y b o a r d   b a t t e r y   i s   a t   "   &   k e y b o a r d B a t t e r y P e r c e n t   &   " % .   P l e a s e   r e m e m b e r   t o   c h a r g e ! "   w i t h   t i t l e   " K e y b o a r d   B a t t e r y   L o w " \  ` a ` l     �� b c��   b  end if    c � d d  e n d   i f a  e�� e l     ��������  ��  ��  ��       �� f g��   f ��
�� .aevtoappnull  �   � **** g �� h���� i j��
�� .aevtoappnull  �   � **** h k     + k k   l l   m m   n n  " o o  +����  ��  ��   i   j  
������  �������� 8 :�� =����  0 btstatlocation btStatLocation�� �� $0 warningthreshold warningThreshold
�� .sysoexecTEXT���     TEXT
�� 
rslt
�� 
nmbr�� *0 mousebatterypercent mouseBatteryPercent
�� 
appr
�� .sysonotfnull��� ��� TEXT�� ,�E�O�E�O��%j O��&E�O�� ��%�%��l Y h ascr  ��ޭ