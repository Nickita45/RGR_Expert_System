   M S B A M L   `   `   `  ����D  @WpfAppRgr, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:WpfAppRgr	WpfAppRgr  5   	       WpfAppRgr.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:WpfAppRgr     5   	     � Title$'  !Експертна система��5      $	��480��6%   $	��640��62    � WindowStartupLocation$ CenterScreen=�6>   .��5      �  � DataContext 6   ��  �� RelativeSource �� *FindAncestor+ �� AncestorType" � �� Path$ Expert� � RowDefinitions 5
   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��* �6    � ColumnDefinitions 5   
   �� 5      �� 5      .+�5   
   �� $��2��6    �� Orientation$ 
Horizontal=�6)   .+�5      �� $��10q�6   $��Center=�6$   $(��"Експертна система:��6?   $
��Bold"�6Y   �� 5      $��Center=�6   ��63   �� $
 Name��� 5      -   5        	 ��Name$	 
loadButton��5   /   $��10q�6   $	��8,3q�6!   $��Відкрити...��6\   5      �� 5   
   $��0��6   $��1��6$   $
��10,2q�61   $
��Bold"�5      ��5   ?   �� $ AttributesCaption�5      �� 5   
   $��1��6   $��1��6$   $��5,2,10,2q�61   $
��Bold"�5      ��5   C   �� $ ObjectsCaption�5      �� 5   
   $��0��6   $��2��6"   $��	10,0,5,10q�6/   ��6B   �� $ 
Attributes���5      �� 5      .R�5      �� $ 
Horizontal=�6!   .+�5       �� $��1q�6#   $��Center=�6.   
 d� 	IsChecked
 5!   #   �� $
 Used� �� Mode$ TwoWay=��� 5"      $��1q�6$   $��Center=�6/   $��Так��6J   �� 5#      $��1q�6#   $��Center=�6.   
 5$   #   �� $ Unused�$ TwoWay=��� 5%      $��1q�6$   $��Center=�6/   $
��Ні��6J   �� 5&      $
��10,1q�6$   ��62   �� $
 Name�5'      5(      5*      �� 5+   
   $��1��6   $��2��6"   $��	5,0,10,10q�6/   ��6B   �� $ FilteredObjects���5,      �� 5-      .R�5.      �� $��1q�6    ��6+   �� $
 Name�5/      51      52      53      