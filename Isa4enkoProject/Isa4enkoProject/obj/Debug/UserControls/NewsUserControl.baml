   M S B A M L   `   `   `  ����J  FIsa4enkoProject, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:Isa4enkoProject.UserControlsIsa4enkoProject.UserControls  5      2    ,Isa4enkoProject.UserControls.NewsUserControl   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      <local*clr-namespace:Isa4enkoProject.UserControls     5      .��5	      �   � RowDefinitions  5
   
   �� 5      $
��auto �6   6,   �� 5      $
��auto �6   6,   �� 5      $��* �6   6)   �� 5      $
��auto �6   6,   .+�5   
   ��    HeaderNewsText#��[  6    �� TextAlignment$
 Left=�6]   $
��Left=�6r   ��6<   �� *HeaderNewsItem+6�   �� 5   
   $��1��6    �� Orientation$ 
Horizontal=�6"   .+�5      ��   
CommonText#��[ 6   $
��auto��6<   ��6I   �� *Author.NameAuthor+ �� StringFormat$ Автор:{0}��6�   �� 5      #��[ 6   $
��auto��6<   ��6I   �� *CreationDateNewsItem+$ dd.MM.yyyy HH:mm��6�   5      �� 5   
   $��2��6   ��6   �� *PhotoNewsItem+6@   �� 5   
   $��3��6   #��[ 6!   $
��auto��6E   $
 Left=�6R   ��6g   �� *TextNewsItem+6�   5      5      