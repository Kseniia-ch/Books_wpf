   M S B A M L   `   `   `  ����@  <Books, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:BooksBooks  5   	   O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 5   	   3clr-namespace:Books.ViewModelsBooks.ViewModels  5   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35qPclr-namespace:System.Windows.Interactivity;assembly=System.Windows.InteractivitySystem.Windows.Interactivity 5	   	   ;"clr-namespace:Books.InfrustructureBooks.Infrustructure  5   	       Books.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   %localclr-namespace:Books     5   	   9system&clr-namespace:System;assembly=mscorlib     5   	   -vmclr-namespace:Books.ViewModels     5   	   ^iPclr-namespace:System.Windows.Interactivity;assembly=System.Windows.Interactivity     5	   	   V RMaterialDesignThemes.Wpf, Version=3.1.0.1244, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   2	converter"clr-namespace:Books.Infrustructure  5   	   -   5          �Name$  
ThisWindow��5
   	    � Icon$ /Pictures/icon.png��5   	      MaterialDesignBody#���   5   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5   	    	 Books � Title# �  5   	   $	��450��6)   $	��900��66   $	��565��6B    � WindowStartupLocation$ CenterScreen=�6R    � DataContext 5      $  Books.ViewModels.MainViewModel  5   
   6    � 	Resources 5      2  ,Books.Infrustructure.RadioBoolToIntConverter  radioBoolToIntConverter��%   &	         5   
   6,   5      .��5      ]� .+�5    
   ]� $	��Top=�6    
 MenuBg#���  5!      .+�5"      �� $
��Left=�6   $
��Left=�5%      $��Center=�5&      $
��10 5q�5'      $��5q�5(        	ButtonAdd#���  5*      +  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 25��5+        Add	 � ToolTip#	 �  5,      ��5#      �� *
AddCommand+��5$      �� 
 �� ElementName$
 
ThisWindow����5)      ��  �� RelativeSource ��  �� AncestorType$ WindowL� �� Mode$ FindAncestor=� �� Path$ DataContext.FontSizeMenu�.��5-      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$
 Plus=�5.      $��24��5/      $��24��50      51      �� 52      $
��Left=�6   $	��350��53      $
��Left=�54      $��Center=�55      $
��10 5q�56      $��5q�57       �� 
IsEditable . ��58      ��  �� $ WindowL�$ FindAncestor=�$ DataContext.FontSizeMenu�@�5:      �� 5;        SortByIdAscending#���  6#    �� 
IsSelected . .  (System.Windows.Interactivity.Interaction   Triggers 5=      /  )System.Windows.Interactivity.EventTrigger  5>         	EventName$ Selected��6-   .  (System.Windows.Interactivity.TriggerBase   Actions. 5?   "   6	  0System.Windows.Interactivity.InvokeCommandAction	   	  Command 68   �� *SortCommand+ 	  CommandParameter 5@   8   (
   "Books.Infrustructure.SortCriterion
   
  Field$ Id�� 
  
Descending .  5A      5C      �� 5D       	 SortByTitleAscending#��� 	 6#    5E        5F      $ Selected��6-   . 5G   "   	   68   �� *SortCommand+ 5H   8   
  $ Title�� .  5I      5K      �� 5L       
 SortByTitleDescending#��� 
 6#    5M        5N      $ Selected��6-   . 5O   "   	   68   �� *SortCommand+ 5P   8   
  $ Title�� . 5Q      5S      �� 5T        SortByAuthorAscending#���  6#    5U        5V      $ Selected��6-   . 5W   "   	   68   �� *SortCommand+ 5X   8   
  $ Author�� .  5Y      5[      �� 5\        SortByAuthorDescending#���  6#    5]        5^      $ Selected��6-   . 5_   "   	   68   �� *SortCommand+ 5`   8   
  $ Author�� . 5a      5c      �� 5d        SortByPriceAscending#���  6#    5e        5f      $ Selected��6-   . 5g   "   	   68   �� *SortCommand+ 5h   8   
  $ Price�� .  5i      5k      �� 5l        SortByPriceDescending#���  6#    5m        5n      $ Selected��6-   . 5o   "   	   68   �� *SortCommand+ 5p   8   
  $ Price�� . 5q      5s      �� 5t        SortByYearAscending#���  6#    5u        5v      $ Selected��6-   . 5w   "   	   68   �� *SortCommand+ 5x   8   
  $
 Year�� .  5y      5{      �� 5|        SortByYearDescending#���  6#    5}        5~      $ Selected��6-   . 5   "   	   68   �� *SortCommand+ 5�   8   
  $
 Year�� . 5�      5�      �� 5�        SortByPublisherAscending#���  6#    5�        5�      $ Selected��6-   . 5�   "   	   68   �� *SortCommand+ 5�   8   
  $ 	Publisher�� .  5�      5�      �� 5�        SortByPublisherDescending#���  6#    5�        5�      $ Selected��6-   . 5�   "   	   68   �� *SortCommand+ 5�   8   
  $ 	Publisher�� . 5�      5�      �� 5�        SortByPagesAscending#���  6#    5�        5�      $ Selected��6-   . 5�   "   	   68   �� *SortCommand+ 5�   8   
  $ Pages�� .  5�      5�      �� 5�        SortByPagesDescending#���  6#    5�        5�      $ Selected��6-   . 5�   "   	   68   �� *SortCommand+ 5�   8   
  $ Pages�� . 5�      5�      5�      o� 5�       o� 
IsMainMenu . $��Center=�5�      $��Right=�5�      #���  5�      $��Right=�5�      .@�5�      m� ��5�        5�      $ CogBox=�62   $��Right=�5�   2     MenuIcon#���  5�   2   $��50��5�   2   $��50��5�   2   .@�5�      m� $��150px��5�        Size#���  5�      ��5�      ��  �� $ WindowL�$ FindAncestor=�$ DataContext.FontSizeMenu�.@�5�      	� $��150px��6&    ! MaterialDesignDarkRadioButton#��[ 5�   &    	� 	GroupName$
 Size��5�   !    	 Small#���  5�   !    d� 	IsChecked 5�   !   �� *Size+ �� 	Converter# [  �� ConverterParameter$ 0��5�   !   	� 5�      $��150px��6&   #��[ 5�   &   $
 Size��5�   !    
 Medium#���  5�   !    5�   !   �� *Size+# [ $ 1��5�   !   	� 5�      $��150px��6&   #��[ 5�   &   $
 Size��5�   !    	 Large#���  5�   !    5�   !   �� *Size+# [ $ 2��5�   !   5�      �� 5�      m� 5�      $��150px��5�       	 Theme#���  5�      ��5�      ��  �� $ WindowL�$ FindAncestor=�$ DataContext.FontSizeMenu�.@�5�      	� $��150px��6&   #��[ 5�   &   $ 
ColorTheme��5�   !    	 Light#���  5�   !    5�   !   �� *
ThemeIndex+# [ $ 0��5�   !   	� 5�      $��150px��6&   #��[ 5�   &   $ 
ColorTheme��5�   !     Dark#���  5�   !    5�   !   �� *
ThemeIndex+# [ $ 1��5�   !   5�      �� 5�      6"   m� 5�      $��150px��5�        Language#���  5�      ��5�      ��  �� $ WindowL�$ FindAncestor=�$ DataContext.FontSizeMenu�.@�5�      	� $��150px��6&   #��[ 5�   &   $ Language��5�   !     Russian#���  5�   !    5�   !   �� *
Language+# [ $ 0��5�   !   	� 5�      $��150px��6&   #��[ 5�   &   $ Language��5�   !      	Ukrainian#���   5�   !    5�   !   �� *
Language+# [ $ 1��5�   !   	� 5�      $��150px��6&   #��[ 5�   &   $ Language��5�   !    ! English#��� ! 5�   !    5�   !   �� *
Language+# [ $ 2��5�   !   5�      5�      5�      5�      � 5�   
    " MainColorBg#��� " 6   .+�5�      �� $��Disabled=�5�      $��10 15q�5�      $��Stretch=�5�      $	��Top=�5�      ��5�      �� *Books+ �� SelectedItem 5�      �� *SelectedBook+ 5�        5�      $ MouseDoubleClick��6%   . 5�      	   5�   !   �� *EditCommand+ 5�   !   ��  �� $ FindAncestor=�" �5�       � ContextMenu 5�      �� 5�      ���#d3ff87��5�      �� 5      .R�5  "   $�   $� Orientation$  
Horizontal=�69   5     .@�5     ��  # MaterialDesignFlatButton#��[# 6!   $��0q�5  !   $��0q�6-   $
��25px��5  !   $
��Bold"�5  !    $ Edit#	 � $ 5
  !   ��5  !   ��  �� $ WindowL�$ FindAncestor=�$ DataContext.FontSizeMenu���5	  !   0  *MaterialDesignThemes.Wpf.PackIconExtension  *Pencil+��5  !   �� *EditCommand+��5  !   %  System.Windows.Markup.Reference  !   Name$! 
ThisWindow���� 5     #��[# 6!   $��0q�5  !   $��0q�6-   $
��25px��5  !   $
��Bold"�5  !    
% Remove#	 � % 5  !   ��5  !   ��  �� $ WindowL�$ FindAncestor=�$ DataContext.FontSizeMenu���5  !     *Delete+��5  !   �� *RemoveCommand+5     ��5     �� 5     .R�5     �� ��6%   ��  �� $ WindowL�$ FindAncestor=�$ DataContext.ImageSize�.+�5     �� $
��5 10q�5  $   $��Uniform=�5     $��Center=�5  $   $��Center=�5  $   " J� SnapsToDevicePixels" .  ��5  $   ��  �� $ WindowL�$ FindAncestor=�$ DataContext.ImageSize���5  $   ��  �� $ WindowL�$ FindAncestor=�$ DataContext.ImageSize���5      �� *Image+5!  B   �� 5"     # �� TextAlignment$# Center=�5#  (   $
��Wrap=�5$  (   $
��Bold"�5%  (   ��5"  (   ��  �� $ WindowL�$ FindAncestor=�$ DataContext.FontSize���5&     �� *Title+6)   �� 5'     $# Center=�5(  (   $
��Wrap=�5)  (   ��5'  (   ��  �� $ WindowL�$ FindAncestor=�$ DataContext.FontSize���5*     �� *Author+6*   �� 5+     $
��Wrap=�5,  (   $# Center=�5-  (   ��5+  (   ��  �� $ WindowL�$ FindAncestor=�$ DataContext.FontSize���5.  &   `� 5/  *   $ �� StringFormat$$ {0}, {1}��67   .1�50  .   �� $ 	Publisher�66   �� 51  .   $
 Year�66   52  +   54  #   � 55  "   % � ColumnDefinitions% 56  "   �� 57  &   69   �� 58  &   69   .+�5;  "   �� $��0��6-   $# Right=�5=  -   $��Center=�5>  -   ��5<  -   ��  �� $ WindowL�$ FindAncestor=�$ DataContext.FontSize���5?     �� *Pages+6.   �� 5@  "   $��1��6(   $
��Left=�5B  ,   $��Center=�5C  ,    & ShortPageForm#��� & 5D  ,   ��5A  ,   ��  �� $ WindowL�$ FindAncestor=�$ DataContext.FontSize�5D  ,   5E     �� 5F     $# Center=�5G  (   $
��Bold"�5H  (   ��5F  (   ��  �� $ WindowL�$ FindAncestor=�$ DataContext.FontSize���5I     �� $$ {0} ₴��$ Price�6E   5J     5K     ��5M     �� 5N     .R�5O     � 6&   5P     5R     5S     5T     5U     