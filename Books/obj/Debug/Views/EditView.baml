   M S B A M L   `   `   `  ����@  <Books, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:Books.ViewsBooks.Views  5   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35qPclr-namespace:System.Windows.Interactivity;assembly=System.Windows.InteractivitySystem.Windows.Interactivity 5   	   3clr-namespace:Books.ValidationBooks.Validation  5	   	       Books.Views.EditView   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:Books.Views     5   	   ^iPclr-namespace:System.Windows.Interactivity;assembly=System.Windows.Interactivity     5   	   .vldclr-namespace:Books.Validation     5	   	   V RMaterialDesignThemes.Wpf, Version=3.1.0.1244, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � Icon$  /Pictures/icon.png��5
   	      MaterialDesignBody#���   5   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5   	     Book � Title# �  5   	   $	��450��6(   $	��900��65    � 
ResizeMode$ NoResize=�5   	    � WindowStartupLocation$ CenterOwner=�6    � TaskbarItemInfo 5      *  $System.Windows.Shell.TaskbarItemInfo  5   
   .��5      �   MainColorBg#���  6    � ColumnDefinitions 5   
   �� 5      $��2* �6   6,   �� 5      $
��1.3* �6   6.   �� 5      $��3* �6   6,    � RowDefinitions 5   
   �� 5      $��2* �6   6*   �� 5       6   �� 5!      6   �� 5"      6   �� 5#      6   �� 5$      6   �� 5%      6   .+�5'   
   �� $��0��6   $��0��5(      $��6��5)      $��Stretch=�5*      $��10q�5+      $
��Auto��5,      $��0q�5-      ��5.      �� *ChangeImage+��5/      �� 50      	 j� Stretch$	 Uniform=�6H   
 j� 
AlignmentX$
 Center=�6Z    j� 
AlignmentY$ Center=�6n    �� ImageSource 6   �� *Image+ �� Mode$ TwoWay=�6n   52      �� 53   
   $��1��6   $��0��54      $��5q�55      $��Bottom=�57       	 Title#���  58      ��56      ��  �� RelativeSource ��  �� AncestorType$ WindowL� �� Mode$ FindAncestor=� �� Path$ DataContext.FontSize�58   4   �� 59   
   $��2��6   $��0��5:      $��10q�5;       �� TextWrapping$
 Wrap=�5=      $��Bottom=�5>      ��5<      ��  �� $ WindowL�$ FindAncestor=�$ DataContext.FontSize���5?      �� *Title+6   �� 5@   
   $��1��6   $��1��5A      $��5q�5B      $��Center=�5D       
 Author#���  5E      ��5C      ��  �� $ WindowL�$ FindAncestor=�$ DataContext.FontSize�5E      �� 5F   
   $��2��6   $��1��5G      $��10q�5H      $��Center=�5J      ��5I      ��  �� $ WindowL�$ FindAncestor=�$ DataContext.FontSize���5K      �� *Author+.��6   5L      �� 5M   
   $��1��6   $��2��5N      $��5q�5O      $��Center=�5Q        	Publisher#���  5R      ��5P      ��  �� $ WindowL�$ FindAncestor=�$ DataContext.FontSize�5R   8   �� 5S   
   $��2��6   $��2��5T      $��10q�5U      $��Center=�5W      ��5V      ��  �� $ WindowL�$ FindAncestor=�$ DataContext.FontSize���5X      �� *	Publisher+6/   �� 5Y   
   $��1��6   $��3��5Z      $��5q�5[      $��Center=�5]        Year#���  5^      ��5\      ��  �� $ WindowL�$ FindAncestor=�$ DataContext.FontSize�5^   3   �� 5_   
   $��2��6   $��3��5`      $
��Left=�5a      $	��200��5b      $��10q�5c      $��Center=�5e      ��5d      ��  �� $ WindowL�$ FindAncestor=�$ DataContext.FontSize�.��5e   4   ��5f      �� 5g      $
 Year�6    �� ValidationRules 5h      0  *Books.Validation.PositiveIntValidationRule  5i      ,  &System.Windows.Controls.ValidationRule   ValidationStep$ RawProposedValue=�68   5k      .��5l       =� ErrorTemplate 5m      �� 5n      .R�5o      �� .+�5p      �� 66   �� 5q      
���  ��$
��Bold"�5t   (   ��5q   $   �� *[0].ErrorContent+��5r   (   ��  �� $ WindowL�$ FindAncestor=�$$ DataContext.FontSizeValidatiov�5t   <   5u      5v      .��5w   (   5x      �� 5y   
   $��1��6   $��4��5z      $��5q�5{      $��Center=�5}       		 Pages#��� 	 5~      ��5|      ��  �� $ WindowL�$ FindAncestor=�$ DataContext.FontSize�5~   4   �� 5   
   $��2��6   $��4��5�      $
��Left=�5�      $	��200��5�      $��10q�5�      $��Center=�5�      ��5�      ��  �� $ WindowL�$ FindAncestor=�$ DataContext.FontSize�.��5�   4   ��5�      �� 5�      $ Pages�6    5�        5�      $ RawProposedValue=�68   5�      .��5�       5�      �� 5�      .R�5�      �� .+�5�      �� 66   �� 5�      
���  ��$
��Bold"�5�   (   ��5�   $   �� *[0].ErrorContent+��5�   (   ��  �� $ WindowL�$ FindAncestor=�$$ DataContext.FontSizeValidatiov�5�   <   5�      5�      .��5�   (   5�      �� 5�   
   $��1��6   $��5��5�      $��5q�5�      $��Center=�5�       	
 Price#��� 
 5�      ��5�      ��  �� $ WindowL�$ FindAncestor=�$ DataContext.FontSize�5�   4   � 5�   
   $��2��6   $��5��5�       5�      �� 5�      $��* �6#   6/   �� 5�      $��* �6$   60   .+�5�      �� $��0��6   $
��Left=�5�      $	��200��5�      $��10q�5�      $��Center=�5�      ��5�      ��  �� $ WindowL�$ FindAncestor=�$ DataContext.FontSize�.��5�   8   ��5�      �� 5�      $ Price�6    5�      3  -Books.Validation.PositiveDoubleValidationRule  5�      $ RawProposedValue=�6?   5�      .��5�        5�      �� 5�      .R�5�      �� .+�5�      �� 6:   �� 5�      
���  ��$
��Bold"�5�   (   ��5�   (   �� *[0].ErrorContent+��5�   (   ��  �� $ WindowL�$ FindAncestor=�$$ DataContext.FontSizeValidatiov�5�   <   5�      5�      .��5�   ,   5�      �� 5�      $��1��6   $��5q�5�      $��Center=�5�      ��5�      ��  �� $ WindowL�$ FindAncestor=�$ DataContext.FontSize�.��5�   6   ₴69   5�      � 5�   
   $��0��6   $��6��5�      $��3��5�       5�      �� 5�      6%   �� 5�      6%   �� 5�      6%   �� 5�      6%   .+�5�      �� $��1��6   $��10q�5�      $��Center=�5�       
 Button#���  5�      +  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 15��5�        Save#���  5�      ��5�      ��  �� $ WindowL�$ FindAncestor=�$ DataContext.FontSize���5�      �� *SaveCommand+5�   8   �� 5�      $��2��6   $��10q�5�      $��Center=�5�      #���  5�      $ 15��5�        Сancel#���  5�      ��5�      ��  �� $ WindowL�$ FindAncestor=�$ DataContext.FontSize���5�      �� *СancelCommand+5�   :   5�      5�      5�      