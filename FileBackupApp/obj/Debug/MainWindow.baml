   M S B A M L   `   `   `  ����H  DFileBackupApp, Version=1.0.0.1, Culture=neutral, PublicKeyToken=null-clr-namespace:FileBackupAppFileBackupApp  5   	       FileBackupApp.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:FileBackupApp     5   	   -   5          � Title$  File Backup App��5   	   $	��400��6!   $	��600��6.   $	��400��6:   $	��600��6J    � 	Resources 5	         TextBlockTemp �� 
TargetType �� Property �� Value*  $System.Windows.Controls.DataGridCell=  7System.Windows.Controls.Primitives.DataGridColumnHeader �� EndPoint � MappingMode �� 
StartPoint � Color	 � Offset  ButtonTextLarge��%   &	        '  Z     '  �     '��      &	 `    �� 5
   
   " ��6&   .�5      ��  �@��TextAlignment$ Center=�6.   5      �� 5   
   "  6   .�5      ��  �@��TextAlignment$ Center=�68   5      �� 5   
   "  6   .�5      ��  � ��$ Center=�6;   5      �� 5   
   " ��6   .�5      ��  � �� 5      �� 5      $ 0.5,1&�6*   $ RelativeToBoundingBox=�6;   $ 0.5,0&�6_   .��5      � $ 	#FF20C720��6'   $	 0Q�69   � 5      $ 	#FFE4E88E��6'   $	 1Q�69   5      5      �� 5       � ��$ Arial)�6+   �� 5        � �� �	#FF5D289C6+   5!      �� 5#   
   " ��6(   .�5$      ��  � ��
 �-R��6+   �� 5%       � ��$ 20(�6)   5&      5(      .��5)      � ��5*   
   �� 5+      $ 0.5,1&�6"   $ 0.5,0&�63   .��5,      � $ 	#FF7373E4��6   � 5-      $ 	#FFCB4F4F��6   $	 1Q�61   � 5.      $ 	#FF6A2091��6   $	 0.663Q�61   5/      
 � RowDefinitions
 51   
   �� 52      $��50 �6   �� 53      $��50 �6   �� 54      $��50 �6   �� 55      $��50 �6   �� 56      $��50 �6   �� 57      $��* �6   �� 58      $��50 �6   .+�5<   
   � $��10q�6   $��0��6    � ColumnDefinitions 5=      �� 5>      $��72 �6#   �� 5?      $��* �6#   �� 5@      $��80 �6#   .+�5B      �� $��0��6    �� Orientation$ 
Horizontal=�6)   $
��Left=�6B   $��Center=�6]   .+�5C      �� -   5         ��Name$ LabelLanguage��5C      $��0q�6/   $��Center=�6:   ���	#FF06F7D6.��6m   
Language :6y   5D      �� 5E      $��1��6   $ 
Horizontal=�6)   $
��Left=�6B   .+�5F      �� -   5         ��Name$ comboBoxLanguage��5F       �� SelectedIndex$ 0��65   $��Center=�6G   $��10,0,0,0q�6d   $��Center=�6v   $��80��6�   $��25��6�   .@�5G      �� $��English��6#   �� 5H      $��中文��6#   5I      5J      �� 5K      $��2��6   $ 
Horizontal=�6)   $��Right=�6B   .+�5L      �� -   5        $��topmostCheckBox��5L      $��0q�62   $��Center=�6=   6�   �� 5M      -   5        $ LabelTopmost��5M      $��0q�6.   $��Center=�69   ���	#FF06F7D6.��6l   	Topmost6u   5N      5O      � 5Q   
   $��10q�6   $��1��6    5R      �� 5S      $��* �6#   �� 5T      $��10 �6#   �� 5U      $��10 �6#   .+�5W      �� $��0��6   $ 
Horizontal=�6)   $��10,0,0,0q�6B   $��Center=�6T   $
��Left=�6o   .+�5X      	� -   5        $��rbMirror��5X      $��	10,0,10,0q�6.   $��Center=�6A   ���	#FF06F7D6 d� 	IsChecked$
 TrueY�6s   .��6�   Mirror6�   	� 5Y      -   5        $��rbBackup��5Y      $��	10,0,10,0q�6.   $��Center=�6A   ���	#FF06F7D6.��6s   Backup6{   	� 5Z      -   5        $��rbSynchronize��5Z      $��	10,0,10,0q�63   $��Center=�6F   ���	#FF06F7D6.��6x   Synchronize6�   5[      5\      � 5`   
   $��10q�6   $��2��6    5a      �� 5b      $��72 �6#   �� 5c      $��* �6#   �� 5d      $	��100 �6#   .+�5f      �� -	   5        $ LabelSource��5f      $��0��6)   $��0q�69   $��Center=�6D   ���	#FF06F7D6.��6w   
Source :6�   �� 5g      -
   5         ��Name$ TextBoxSource��5g      $��1��6-   $
��10,0q�6=   $��Center=�6k   6�   �� 5h      $��2��6   $ 
Horizontal=�6)   $��Right=�6B   .+�5i      �� -   5         ��Name$ 	BtnSource��5i      $��30��6,   $��0,0,10,0q�67   .��6a   ...6f   �� 5j      -   5        $ BtnSourceBrowsePath��5j      $��60��66   .��6c   	Browse...6n   5k      5l      � 5o   
   $��10q�6   $��3��6    5p      �� 5q      $��72 �6#   �� 5r      $��* �6#   �� 5s      $	��100 �6#   .+�5u      �� -   5        $ LabelDesination��5u      $��0��6-   $��0q�6=   $��Center=�6H   ���	#FF06F7D6.��6{   Desination :6�   �� 5v      -   5        $ TextBoxDesination��5v      $��1��61   $
��10,0q�6A   $��Center=�6s   6�   �� 5w      $��2��6   $ 
Horizontal=�6)   $��Right=�6B   .+�5x      �� -   5        $ BtnDesination��5x      $��30��60   $��0,0,10,0q�6;   .��6i   ...6n   �� 5y      -   5        $ BtnDesinationBrowsePath��5y      $��60��6:   .��6k   	Browse...6v   5z      5{      � 5}   
   $��10q�6   $��4��6    5~      �� 5      $��* �6#   �� 5�      $��50 �6#   .+�5�      �� $��0��6   $ 
Horizontal=�6)   $
��Left=�6B   .+�5�      �� -   5        $ LabelCopying��5�      $��0��6.   $��	10,0,10,0q�6>   $��Center=�6Q   ���	#FF06F7D66�   5�      �� 5�      $��1��6   $ 
Horizontal=�6)   $
��Left=�6B   .+�5�      �� -   5        $ LabelCopyingSecs��5�      $��0��62   $��	10,0,10,0q�6B   $��Center=�6U   ���	#FF06F7D66�   5�      5�      � 5�   
   $��10q�6   $��5��6   .+�5�      � -   5        $��progressBar��5�      $��Center=�6-   $��30��6H   6V   5�      �� 5�   
   $��6��6   $��10q�6"   $��Right=�6.   $��Bottom=�6J   $ 
Horizontal=�6e   $��Bottom=�6~   .+�5�      �� -   5        $ BtnStart��5�      $��80��6'   $��30��62   $��0,0,0,0q�6>   $��Center=�6O   $��Start��6�   $��Bottom=�6�   $��Right=�6�   $��Center=�6�   $��2��6�   �� 5�      -   5        $ BtnCloseMainWindow��5�      $��80��61   $��30��6<   $��10,0,0,0q�6H   $��Center=�6Z   $��Close��6�   $��Bottom=�6�   $��Right=�6�   5�      5�      5�      