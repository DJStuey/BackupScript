FasdUAS 1.101.10   ��   ��    k             l     ��  ��    P J##########################################################################     � 	 	 � # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #   
  
 l     ��  ��    $ User Folder Backup AppleScript     �   < U s e r   F o l d e r   B a c k u p   A p p l e S c r i p t      l     ��  ��    , &Prepared by Stuart Lamont - March 2017     �   L P r e p a r e d   b y   S t u a r t   L a m o n t   -   M a r c h   2 0 1 7      l     ��������  ��  ��        l     ��  ��    $ Environment specific variables     �   < E n v i r o n m e n t   s p e c i f i c   v a r i a b l e s      l     ��������  ��  ��        l     ��   ��    Q KDefine protocol for Server connection. CIFS, AFP, and SMB should work here.      � ! ! � D e f i n e   p r o t o c o l   f o r   S e r v e r   c o n n e c t i o n .   C I F S ,   A F P ,   a n d   S M B   s h o u l d   w o r k   h e r e .   " # " l     $���� $ r      % & % m      ' ' � ( (  s m b : / / & o      ���� 0 protocol  ��  ��   #  ) * ) l     ��������  ��  ��   *  + , + l     �� - .��   - , &Variables for Location 1 (Main Campus)    . � / / L V a r i a b l e s   f o r   L o c a t i o n   1   ( M a i n   C a m p u s ) ,  0 1 0 l    2���� 2 r     3 4 3 m     5 5 � 6 6  R i d g e w a y 4 o      ���� 0 location1name location1Name��  ��   1  7 8 7 l     �� 9 :��   9  Server Name/Address    : � ; ; & S e r v e r   N a m e / A d d r e s s 8  < = < l    >���� > r     ? @ ? m    	 A A � B B  c a s p e r @ o      ���� "0 location1server location1Server��  ��   =  C D C l     ��������  ��  ��   D  E F E l     �� G H��   G . (Variables for Location 2 (Second Campus)    H � I I P V a r i a b l e s   f o r   L o c a t i o n   2   ( S e c o n d   C a m p u s ) F  J K J l    L���� L r     M N M m     O O � P P  P l e n t y N o      ���� 0 location2name location2Name��  ��   K  Q R Q l     �� S T��   S  Server Name/Address    T � U U & S e r v e r   N a m e / A d d r e s s R  V W V l    X���� X r     Y Z Y m     [ [ � \ \  s p o o k y Z o      ���� "0 location2server location2Server��  ��   W  ] ^ ] l     ��������  ��  ��   ^  _ ` _ l     �� a b��   a  Types of Accounts    b � c c " T y p e s   o f   A c c o u n t s `  d e d l    f���� f r     g h g m     i i � j j 
 S t a f f h o      ���� 0 
userlabel1 
userLabel1��  ��   e  k l k l    m���� m r     n o n m     p p � q q  S t u d e n t o o      ���� 0 
userlabel2 
userLabel2��  ��   l  r s r l     ��������  ��  ��   s  t u t l     �� v w��   v 2 ,name of folders on Network Share for backups    w � x x X n a m e   o f   f o l d e r s   o n   N e t w o r k   S h a r e   f o r   b a c k u p s u  y z y l    {���� { r     | } | m     ~ ~ �    s t a f f b a c k } o      ���� 0 label1target label1Target��  ��   z  � � � l    ' ����� � r     ' � � � m     # � � � � �  s t u b a c k � o      ���� 0 label2target label2Target��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � c ]folders to exclude from rsync - Folder names with spaces should be quoted with single quotes.    � � � � � f o l d e r s   t o   e x c l u d e   f r o m   r s y n c   -   F o l d e r   n a m e s   w i t h   s p a c e s   s h o u l d   b e   q u o t e d   w i t h   s i n g l e   q u o t e s . �  � � � l  ( / ����� � r   ( / � � � m   ( + � � � � � n M o v i e s , M u s i c , P i c t u r e s , D r o p b o x , ' G o o g l e   D r i v e ' ,   P a r a l l e l s � o      ���� 0 excludes  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � P JDisplay a warning to Users that they should connect to Ethernet - Optional    � � � � � D i s p l a y   a   w a r n i n g   t o   U s e r s   t h a t   t h e y   s h o u l d   c o n n e c t   t o   E t h e r n e t   -   O p t i o n a l �  � � � l  0 = ����� � I  0 =�� � �
�� .sysodlogaskr        TEXT � m   0 3 � � � � �2 I t   i s   r e c o m m e n d e d   t h a t   y o u   c o n n e c t   t h e   c o m p u t e r   t o   E t h e r n e t   p r i o r   t o   r u n n i n g   t h i s   t o o l .   B a c k u p s   o v e r   W i - F i   w i l l   t a k e   a n   e x t r e m e l y   l o n g   t i m e   i n   c o m p a r i s o n � �� ���
�� 
disp � m   6 9��
�� stic   ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � @ :It is not recommended to modify the script below this line    � � � � t I t   i s   n o t   r e c o m m e n d e d   t o   m o d i f y   t h e   s c r i p t   b e l o w   t h i s   l i n e �  � � � l     �� � ���   � Q K###########################################################################    � � � � � # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # �  � � � l     �� � ���   � &  Experimental - User Input tweaks    � � � � @ E x p e r i m e n t a l   -   U s e r   I n p u t   t w e a k s �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 8 2set locationList to {location1Name, location2Name}    � � � � d s e t   l o c a t i o n L i s t   t o   { l o c a t i o n 1 N a m e ,   l o c a t i o n 2 N a m e } �  � � � l     �� � ���   � # choose from list locationList    � � � � : c h o o s e   f r o m   l i s t   l o c a t i o n L i s t �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � R L###########################################################################     � � � � � # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �  Begin    � � � � 
 B e g i n �  ��� � l  >� ����� � O   >� � � � k   D� � �  � � � l  D D��������  ��  ��   �  � � � r   D O � � � I  D K�� ���
�� .earslfdrutxt  @    file � m   D G � � � � �  / U s e r s��   � o      ���� 0 userlist userList �  � � � l  P P��������  ��  ��   �  � � � I  P W�� ���
�� .gtqpchltns    @   @ ns   � o   P S���� 0 userlist userList��   �  � � � r   X _ � � � 1   X [��
�� 
rslt � o      ���� 0 username userName �  � � � l  ` `��������  ��  ��   �  � � � r   ` k � � � b   ` g � � � m   ` c � � � � �  U s e r s / � o   c f���� 0 username userName � o      ���� 0 backupsource backupSource �  � � � l  l l��������  ��  ��   �  � � � l  l l�� � ���   � $ get current location from user    � � � � < g e t   c u r r e n t   l o c a t i o n   f r o m   u s e r �  � � � r   l � � � � I  l ��� � 
�� .sysodlogaskr        TEXT � m   l o � 4 W h i c h   l o c a t i o n   a r e   y o u   a t ?  ��
�� 
btns J   r v  o   r s���� 0 location1name location1Name � o   s t�~�~ 0 location2name location2Name�   �}	�|
�} 
dflt	 o   y z�{�{ 0 location1name location1Name�|   � o      �z�z 0 question   � 

 r   � � n   � � 1   � ��y
�y 
bhit o   � ��x�x 0 question   o      �w�w "0 currentlocation currentLocation  l  � ��v�v   4 .set server variable to match relevant location    � \ s e t   s e r v e r   v a r i a b l e   t o   m a t c h   r e l e v a n t   l o c a t i o n  Z   � ��u�t =  � � o   � ��s�s "0 currentlocation currentLocation o   � ��r�r 0 location1name location1Name r   � � o   � ��q�q "0 location1server location1Server o      �p�p 
0 server  �u  �t    Z   � � �o�n =  � �!"! o   � ��m�m "0 currentlocation currentLocation" o   � ��l�l 0 location2name location2Name  r   � �#$# o   � ��k�k "0 location2server location2Server$ o      �j�j 
0 server  �o  �n   %&% l  � ��i�h�g�i  �h  �g  & '(' l  � ��f)*�f  )   get account type from User   * �++ 4 g e t   a c c o u n t   t y p e   f r o m   U s e r( ,-, r   � �./. I  � ��e01
�e .sysodlogaskr        TEXT0 m   � �22 �33 4 W h a t   t y p e   o f   u s e r   i s   t h i s ?1 �d45
�d 
btns4 J   � �66 787 o   � ��c�c 0 
userlabel1 
userLabel18 9�b9 o   � ��a�a 0 
userlabel2 
userLabel2�b  5 �`:�_
�` 
dflt: o   � ��^�^ 0 
userlabel1 
userLabel1�_  / o      �]�] 0 question  - ;<; r   � �=>= n   � �?@? 1   � ��\
�\ 
bhit@ o   � ��[�[ 0 question  > o      �Z�Z 0 accounttype accountType< ABA l  � ��YCD�Y  C - 'set Target folder based on Account Type   D �EE N s e t   T a r g e t   f o l d e r   b a s e d   o n   A c c o u n t   T y p eB FGF Z   � �HI�X�WH =  � �JKJ o   � ��V�V 0 accounttype accountTypeK o   � ��U�U 0 
userlabel2 
userLabel2I r   � �LML o   � ��T�T 0 label2target label2TargetM o      �S�S 0 targetfolder targetFolder�X  �W  G NON Z   �PQ�R�QP =  � �RSR o   � ��P�P 0 accounttype accountTypeS o   � ��O�O 0 
userlabel1 
userLabel1Q k   �TT UVU r   � �WXW o   � ��N�N 0 label1target label1TargetX o      �M�M 0 targetfolder targetFolderV Y�LY r   �Z[Z m   � �\\ �]]  [ o      �K�K 0 excludes  �L  �R  �Q  O ^_^ l �J�I�H�J  �I  �H  _ `a` l �Gbc�G  b G Amounts Network location. Target path will be mounted in /Volumes.   c �dd � m o u n t s   N e t w o r k   l o c a t i o n .   T a r g e t   p a t h   w i l l   b e   m o u n t e d   i n   / V o l u m e s .a efe I �Fg�E
�F .aevtmvolnull���     TEXTg b  hih b  jkj b  lml o  	�D�D 0 protocol  m o  	�C�C 
0 server  k m  nn �oo  /i o  �B�B 0 targetfolder targetFolder�E  f pqp l �Ars�A  r : 4set mounted volume name, and full destination folder   s �tt h s e t   m o u n t e d   v o l u m e   n a m e ,   a n d   f u l l   d e s t i n a t i o n   f o l d e rq uvu r  %wxw b  !yzy m  {{ �||  / V o l u m e s /z o   �@�@ 0 targetfolder targetFolderx o      �?�? 0 
volumename 
volumeNamev }~} r  &5� b  &1��� b  &-��� o  &)�>�> 0 
volumename 
volumeName� m  ),�� ���  /� o  -0�=�= 0 username userName� o      �<�< &0 destinationfolder destinationFolder~ ��� l 66�;���;  � &  Display location of sync to User   � ��� @ D i s p l a y   l o c a t i o n   o f   s y n c   t o   U s e r� ��� I 6A�:��9
�: .sysodlogaskr        TEXT� b  6=��� m  69�� ��� p T h e   U s e r   A c c o u n t   w i l l   b e   s y n c e d   t o   t h e   f o l l o w i n g   f o l d e r  � o  9<�8�8 &0 destinationfolder destinationFolder�9  � ��� l BB�7�6�5�7  �6  �5  � ��� l BB�4���4  � � ~backup data using rsync. The --exclude function takes input from settings section. User will be prompted for admin credentials   � ��� � b a c k u p   d a t a   u s i n g   r s y n c .   T h e   - - e x c l u d e   f u n c t i o n   t a k e s   i n p u t   f r o m   s e t t i n g s   s e c t i o n .   U s e r   w i l l   b e   p r o m p t e d   f o r   a d m i n   c r e d e n t i a l s� ��� Q  Bq���3� I Eh�2��
�2 .sysoexecTEXT���     TEXT� b  E`��� b  E\��� b  EX��� b  ET��� b  EP��� b  EL��� m  EH�� ��� * r s y n c   - a v   - - e x c l u d e = {� o  HK�1�1 0 excludes  � m  LO�� ���  }  � o  PS�0�0 0 backupsource backupSource� m  TW�� ���  /  � o  X[�/�/ &0 destinationfolder destinationFolder� m  \_�� ���  /� �.��-
�. 
badm� m  cd�,
�, boovtrue�-  � R      �+�*�)
�+ .ascrerr ****      � ****�*  �)  �3  � ��� l rr�(�'�&�(  �'  �&  � ��� l rr�%���%  � # insert Progress Bar code here   � ��� : i n s e r t   P r o g r e s s   B a r   c o d e   h e r e� ��� l rr�$�#�"�$  �#  �"  � ��� l rr�!���!  � * $Prompt User that backup is completed   � ��� H P r o m p t   U s e r   t h a t   b a c k u p   i s   c o m p l e t e d� ��� I r�� ��
�  .sysodlogaskr        TEXT� m  ru�� ��� f B a c k u p   C o m p l e t e d .   P l e a s e   c o m p a r e   c o n t e n t s   t o   v e r i f y� ���
� 
btns� J  x}�� ��� m  x{�� ���  O K�  �  � ��� l ������  �  �  �   � m   > A���                                                                                  MACS  alis    t  Macintosh HD               �8�H+  p��
Finder.app                                                     s3\��        ����  	                CoreServices    �7p�      ��vn    p��p��p��  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��  ��       ����  � �
� .aevtoappnull  �   � ****� �������
� .aevtoappnull  �   � ****� k    ���  "��  0��  <��  J��  V��  d��  k��  y��  ���  ���  ���  ���  �  �  �  � > '� 5� A� O� [� i� p� ~�
 ��	 �� ����� ������  �����������������2����\n��{��������������������� 0 protocol  � 0 location1name location1Name� "0 location1server location1Server� 0 location2name location2Name� "0 location2server location2Server� 0 
userlabel1 
userLabel1� 0 
userlabel2 
userLabel2�
 0 label1target label1Target�	 0 label2target label2Target� 0 excludes  
� 
disp
� stic   
� .sysodlogaskr        TEXT
� .earslfdrutxt  @    file� 0 userlist userList
� .gtqpchltns    @   @ ns  
� 
rslt�  0 username userName�� 0 backupsource backupSource
�� 
btns
�� 
dflt�� �� 0 question  
�� 
bhit�� "0 currentlocation currentLocation�� 
0 server  �� 0 accounttype accountType�� 0 targetfolder targetFolder
�� .aevtmvolnull���     TEXT�� 0 
volumename 
volumeName�� &0 destinationfolder destinationFolder
�� 
badm
�� .sysoexecTEXT���     TEXT��  ��  ���E�O�E�O�E�O�E�O�E�O�E�O�E�O�E�Oa E` Oa E` Oa a a l Oa Aa j E` O_ j O_ E` Oa _ %E`  Oa !a "��lva #�a $ E` %O_ %a &,E` 'O_ '�  
�E` (Y hO_ '�  
�E` (Y hOa )a "��lva #�a $ E` %O_ %a &,E` *O_ *�  _ E` +Y hO_ *�  �E` +Oa ,E` Y hO�_ (%a -%_ +%j .Oa /_ +%E` 0O_ 0a 1%_ %E` 2Oa 3_ 2%j O (a 4_ %a 5%_  %a 6%_ 2%a 7%a 8el 9W X : ;hOa <a "a =kvl OPU ascr  ��ޭ