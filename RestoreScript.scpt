FasdUAS 1.101.10   ��   ��    k             l     ��  ��    P J##########################################################################     � 	 	 � # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #   
  
 l     ��  ��    % User Folder Restore AppleScript     �   > U s e r   F o l d e r   R e s t o r e   A p p l e S c r i p t      l     ��  ��    , &Prepared by Stuart Lamont - March 2017     �   L P r e p a r e d   b y   S t u a r t   L a m o n t   -   M a r c h   2 0 1 7      l     ��������  ��  ��        l     ��  ��    $ Environment specific variables     �   < E n v i r o n m e n t   s p e c i f i c   v a r i a b l e s      l     ��������  ��  ��        l     ��   ��    Q KDefine protocol for Server connection. CIFS, AFP, and SMB should work here.      � ! ! � D e f i n e   p r o t o c o l   f o r   S e r v e r   c o n n e c t i o n .   C I F S ,   A F P ,   a n d   S M B   s h o u l d   w o r k   h e r e .   " # " l     $���� $ r      % & % m      ' ' � ( (  s m b : / / & o      ���� 0 protocol  ��  ��   #  ) * ) l     ��������  ��  ��   *  + , + l     �� - .��   - , &Variables for Location 1 (Main Campus)    . � / / L V a r i a b l e s   f o r   L o c a t i o n   1   ( M a i n   C a m p u s ) ,  0 1 0 l    2���� 2 r     3 4 3 m     5 5 � 6 6  R i d g e w a y 4 o      ���� 0 location1name location1Name��  ��   1  7 8 7 l     �� 9 :��   9  Server Name/Address    : � ; ; & S e r v e r   N a m e / A d d r e s s 8  < = < l    >���� > r     ? @ ? m    	 A A � B B  c a s p e r @ o      ���� "0 location1server location1Server��  ��   =  C D C l     ��������  ��  ��   D  E F E l     �� G H��   G . (Variables for Location 2 (Second Campus)    H � I I P V a r i a b l e s   f o r   L o c a t i o n   2   ( S e c o n d   C a m p u s ) F  J K J l    L���� L r     M N M m     O O � P P  P l e n t y N o      ���� 0 location2name location2Name��  ��   K  Q R Q l     �� S T��   S  Server Name/Address    T � U U & S e r v e r   N a m e / A d d r e s s R  V W V l    X���� X r     Y Z Y m     [ [ � \ \  s p o o k y Z o      ���� "0 location2server location2Server��  ��   W  ] ^ ] l     ��������  ��  ��   ^  _ ` _ l     �� a b��   a  Types of Accounts    b � c c " T y p e s   o f   A c c o u n t s `  d e d l    f���� f r     g h g m     i i � j j 
 S t a f f h o      ���� 0 
userlabel1 
userLabel1��  ��   e  k l k l    m���� m r     n o n m     p p � q q  S t u d e n t o o      ���� 0 
userlabel2 
userLabel2��  ��   l  r s r l     ��������  ��  ��   s  t u t l     �� v w��   v 2 ,name of folders on Network Share for backups    w � x x X n a m e   o f   f o l d e r s   o n   N e t w o r k   S h a r e   f o r   b a c k u p s u  y z y l    {���� { r     | } | m     ~ ~ �    s t a f f b a c k } o      ���� 0 label1target label1Target��  ��   z  � � � l    ' ����� � r     ' � � � m     # � � � � �  s t u b a c k � o      ���� 0 label2target label2Target��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � P JDisplay a warning to Users that they should connect to Ethernet - Optional    � � � � � D i s p l a y   a   w a r n i n g   t o   U s e r s   t h a t   t h e y   s h o u l d   c o n n e c t   t o   E t h e r n e t   -   O p t i o n a l �  � � � l  ( 5 ����� � I  ( 5�� � �
�� .sysodlogaskr        TEXT � m   ( + � � � � �2 I t   i s   r e c o m m e n d e d   t h a t   y o u   c o n n e c t   t h e   c o m p u t e r   t o   E t h e r n e t   p r i o r   t o   r u n n i n g   t h i s   t o o l .   B a c k u p s   o v e r   W i - F i   w i l l   t a k e   a n   e x t r e m e l y   l o n g   t i m e   i n   c o m p a r i s o n � �� ���
�� 
disp � m   . 1��
�� stic   ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � @ :It is not recommended to modify the script below this line    � � � � t I t   i s   n o t   r e c o m m e n d e d   t o   m o d i f y   t h e   s c r i p t   b e l o w   t h i s   l i n e �  � � � l     �� � ���   � Q K###########################################################################    � � � � � # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # �  � � � l     �� � ���   � &  Experimental - User Input tweaks    � � � � @ E x p e r i m e n t a l   -   U s e r   I n p u t   t w e a k s �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 8 2set locationList to {location1Name, location2Name}    � � � � d s e t   l o c a t i o n L i s t   t o   { l o c a t i o n 1 N a m e ,   l o c a t i o n 2 N a m e } �  � � � l     �� � ���   � # choose from list locationList    � � � � : c h o o s e   f r o m   l i s t   l o c a t i o n L i s t �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � l f######################################################################################################    � � � � � # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �  Begin    � � � � 
 B e g i n �  ��� � l  6� ����� � O   6� � � � k   < � �  � � � l  < <��������  ��  ��   �  � � � r   < G � � � I  < C�� ���
�� .earslfdrutxt  @    file � m   < ? � � � � �  / U s e r s��   � o      ���� 0 userlist userList �  � � � l  H H��������  ��  ��   �  � � � l  H H��������  ��  ��   �  � � � l  H H��������  ��  ��   �  � � � l  H H��������  ��  ��   �  � � � l  H H��������  ��  ��   �  � � � l  H H�� � ���   � $ get current location from user    � � � � < g e t   c u r r e n t   l o c a t i o n   f r o m   u s e r �  � � � r   H ` � � � I  H \�� � �
�� .sysodlogaskr        TEXT � m   H K � � � � � 4 W h i c h   l o c a t i o n   a r e   y o u   a t ? � �� � �
�� 
btns � J   N R � �  � � � o   N O���� 0 location1name location1Name �  ��� � o   O P���� 0 location2name location2Name��   � �� ���
�� 
dflt � o   U V���� 0 location1name location1Name��   � o      ���� 0 question   �  � � � r   a l � � � n   a h � � � 1   d h��
�� 
bhit � o   a d���� 0 question   � o      �� "0 currentlocation currentLocation �  � � � l  m m�~ � ��~   � 4 .set server variable to match relevant location    � � � � \ s e t   s e r v e r   v a r i a b l e   t o   m a t c h   r e l e v a n t   l o c a t i o n �  � � � Z   m ~ � ��}�| � =  m r   o   m p�{�{ "0 currentlocation currentLocation o   p q�z�z 0 location1name location1Name � r   u z o   u v�y�y "0 location1server location1Server o      �x�x 
0 server  �}  �|   �  Z    ��w�v =   �	 o    ��u�u "0 currentlocation currentLocation	 o   � ��t�t 0 location2name location2Name r   � �

 o   � ��s�s "0 location2server location2Server o      �r�r 
0 server  �w  �v    l  � ��q�p�o�q  �p  �o    l  � ��n�n     get account type from User    � 4 g e t   a c c o u n t   t y p e   f r o m   U s e r  r   � � I  � ��m
�m .sysodlogaskr        TEXT m   � � � 4 W h a t   t y p e   o f   u s e r   i s   t h i s ? �l
�l 
btns J   � �  o   � ��k�k 0 
userlabel1 
userLabel1  �j  o   � ��i�i 0 
userlabel2 
userLabel2�j   �h!�g
�h 
dflt! o   � ��f�f 0 
userlabel1 
userLabel1�g   o      �e�e 0 question   "#" r   � �$%$ n   � �&'& 1   � ��d
�d 
bhit' o   � ��c�c 0 question  % o      �b�b 0 accounttype accountType# ()( l  � ��a*+�a  * - 'set Target folder based on Account Type   + �,, N s e t   T a r g e t   f o l d e r   b a s e d   o n   A c c o u n t   T y p e) -.- Z   � �/0�`�_/ =  � �121 o   � ��^�^ 0 accounttype accountType2 o   � ��]�] 0 
userlabel2 
userLabel20 r   � �343 o   � ��\�\ 0 label2target label2Target4 o      �[�[ 0 targetfolder targetFolder�`  �_  . 565 Z   � �78�Z�Y7 =  � �9:9 o   � ��X�X 0 accounttype accountType: o   � ��W�W 0 
userlabel1 
userLabel18 r   � �;<; o   � ��V�V 0 label1target label1Target< o      �U�U 0 targetfolder targetFolder�Z  �Y  6 =>= l  � ��T�S�R�T  �S  �R  > ?@? l  � ��QAB�Q  A G Amounts Network location. Target path will be mounted in /Volumes.   B �CC � m o u n t s   N e t w o r k   l o c a t i o n .   T a r g e t   p a t h   w i l l   b e   m o u n t e d   i n   / V o l u m e s .@ DED I  � ��PF�O
�P .aevtmvolnull���     TEXTF b   � �GHG b   � �IJI b   � �KLK o   � ��N�N 0 protocol  L o   � ��M�M 
0 server  J m   � �MM �NN  /H o   � ��L�L 0 targetfolder targetFolder�O  E OPO l  � ��KQR�K  Q : 4set mounted volume name, and full destination folder   R �SS h s e t   m o u n t e d   v o l u m e   n a m e ,   a n d   f u l l   d e s t i n a t i o n   f o l d e rP TUT r   � �VWV b   � �XYX m   � �ZZ �[[  / V o l u m e s /Y o   � ��J�J 0 targetfolder targetFolderW o      �I�I 0 
volumename 
volumeNameU \]\ l  � ��H�G�F�H  �G  �F  ] ^_^ r   �`a` I  ��Eb�D
�E .earslfdrutxt  @    fileb o   � ��C�C 0 
volumename 
volumeName�D  a o      �B�B 0 userlist userList_ cdc I �Ae�@
�A .gtqpchltns    @   @ ns  e o  	�?�? 0 userlist userList�@  d fgf r  hih 1  �>
�> 
rslti o      �=�= 0 username userNameg jkj l �<�;�:�<  �;  �:  k lml l �9�8�7�9  �8  �7  m non r  !pqp b  rsr m  tt �uu  U s e r s /s o  �6�6 0 username userNameq o      �5�5 0 backupsource backupSourceo vwv r  "1xyx b  "-z{z b  ")|}| o  "%�4�4 0 
volumename 
volumeName} m  %(~~ �  /{ o  ),�3�3 0 username userNamey o      �2�2 &0 destinationfolder destinationFolderw ��� l 22�1���1  � &  Display location of sync to User   � ��� @ D i s p l a y   l o c a t i o n   o f   s y n c   t o   U s e r� ��� I 2=�0��/
�0 .sysodlogaskr        TEXT� b  29��� m  25�� ��� p T h e   U s e r   A c c o u n t   w i l l   b e   s y n c e d   t o   t h e   f o l l o w i n g   f o l d e r  � o  58�.�. 0 backupsource backupSource�/  � ��� l >>�-���-  � � ~backup data using rsync. The --exclude function takes input from settings section. User will be prompted for admin credentials   � ��� � b a c k u p   d a t a   u s i n g   r s y n c .   T h e   - - e x c l u d e   f u n c t i o n   t a k e s   i n p u t   f r o m   s e t t i n g s   s e c t i o n .   U s e r   w i l l   b e   p r o m p t e d   f o r   a d m i n   c r e d e n t i a l s� ��� I >Y�,��
�, .sysoexecTEXT���     TEXT� b  >Q��� b  >M��� b  >I��� b  >E��� m  >A�� ���  r s y n c   - a v  � o  AD�+�+ &0 destinationfolder destinationFolder� m  EH�� ���  /  � o  IL�*�* 0 backupsource backupSource� m  MP�� ���  /� �)��(
�) 
badm� m  TU�'
�' boovtrue�(  � ��� I Zm�&��%
�& .sysoexecTEXT���     TEXT� b  Zi��� b  Ze��� b  Za��� m  Z]�� ���  c h o w n   - R� o  ]`�$�$ 0 username userName� m  ad�� ���   � o  eh�#�# 0 backupsource backupSource�%  � ��� l nn�"�!� �"  �!  �   � ��� l nn����  � # insert Progress Bar code here   � ��� : i n s e r t   P r o g r e s s   B a r   c o d e   h e r e� ��� l nn����  �  �  � ��� l nn����  � * $Prompt User that backup is completed   � ��� H P r o m p t   U s e r   t h a t   b a c k u p   i s   c o m p l e t e d� ��� I n}���
� .sysodlogaskr        TEXT� m  nq�� ��� f B a c k u p   C o m p l e t e d .   P l e a s e   c o m p a r e   c o n t e n t s   t o   v e r i f y� ���
� 
btns� J  ty�� ��� m  tw�� ���  O K�  �  � ��� l ~~����  �  �  �   � m   6 9���                                                                                  MACS  alis    t  Macintosh HD               �ɴ�H+     6
Finder.app                                                      ��H۾        ����  	                CoreServices    ��      �HA       6   5   4  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��  ��       ����  � �
� .aevtoappnull  �   � ****� �������
� .aevtoappnull  �   � ****� k    ���  "��  0��  <��  J��  V��  d��  k��  y��  ���  ���  ���  �  �  �  � : '� 5�
 A�	 O� [� i� p� ~� �� ���� � ����� �������������������M��Z��������t��~��������������� 0 protocol  �
 0 location1name location1Name�	 "0 location1server location1Server� 0 location2name location2Name� "0 location2server location2Server� 0 
userlabel1 
userLabel1� 0 
userlabel2 
userLabel2� 0 label1target label1Target� 0 label2target label2Target
� 
disp
� stic   
�  .sysodlogaskr        TEXT
�� .earslfdrutxt  @    file�� 0 userlist userList
�� 
btns
�� 
dflt�� �� 0 question  
�� 
bhit�� "0 currentlocation currentLocation�� 
0 server  �� 0 accounttype accountType�� 0 targetfolder targetFolder
�� .aevtmvolnull���     TEXT�� 0 
volumename 
volumeName
�� .gtqpchltns    @   @ ns  
�� 
rslt�� 0 username userName�� 0 backupsource backupSource�� &0 destinationfolder destinationFolder
�� 
badm
�� .sysoexecTEXT���     TEXT���E�O�E�O�E�O�E�O�E�O�E�O�E�O�E�Oa E` Oa a a l Oa Ea j E` Oa a ��lva �a  E` O_ a ,E`  O_  �  
�E` !Y hO_  �  
�E` !Y hOa "a ��lva �a  E` O_ a ,E` #O_ #�  _ E` $Y hO_ #�  
�E` $Y hO�_ !%a %%_ $%j &Oa '_ $%E` (O_ (j E` O_ j )O_ *E` +Oa ,_ +%E` -O_ (a .%_ +%E` /Oa 0_ -%j Oa 1_ /%a 2%_ -%a 3%a 4el 5Oa 6_ +%a 7%_ -%j 5Oa 8a a 9kvl OPUascr  ��ޭ