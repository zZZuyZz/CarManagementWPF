   M S B A M L   `   `   `  ����P  LCarManagementSolution, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:CarManagementSolutionCarManagementSolution  5   	   *    $CarManagementSolution.CustomerWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   5local#clr-namespace:CarManagementSolution     5   	     � Title$  CustomerWindow��5   	   $	��450��6    $	��800��6-   .��5	      �� .+�5
   
   �� $	��200��6   $��Information��6    $	��569��65   $
��Left=�6A   $	��Top=�6\    �� Left$ 10��6t   
 �� Top$ 10��6�    J� RenderTransformOrigin$ 0.484,0.184&�6�   .��5      �� .+�5      �� $��
SeatNumber��6   $ 62��6-   $��Center=�6=   $	��Top=�6Z   $��76��6r   �� 5      $
��Year��6   $ 5��6'   $
��Left=�66   $��Center=�6Q   $��76��6l   �� 5      $��Color��6   $ 31��6(   $
��Left=�68   $��Center=�6S   $��76��6n   �� 5      $��CarDescription��6   $	 120��61   $��Center=�6B   $	��Top=�6_   �� 5      $��Brand��6   $ 89��6(   $
��Left=�68   $��Center=�6S   $��76��6n   �� 5      -   5         ��Name$ txt_SeatNumber��5      $ 94��62    �� TextWrapping$
 Wrap=�6C   $ 66��6W   $	��230��6g   $
��Left=�6s   $��Center=�6�   �� 5      -   5        $ txt_Description��5      $ 93��63   $
 Wrap=�6D   $	 124��6Y   $	��448��6j   $
��Left=�6v   $	��Top=�6�   �� 5      -   5        $ txt_Year��5      $ 94��6,   $
 Wrap=�6=   $ 9��6R   $	��231��6a   $
��Left=�6m   $��Center=�6�   �� 5      -   5        $ 	txt_Color��5      $ 94��6-   $
 Wrap=�6>   $ 35��6S   $	��231��6c   $
��Left=�6o   $��Center=�6�   �� 5      -   5         ��Name$ 	cmb_Brand��5      $ 93��6.   $ 91��6?   $	��231��6O   $
��Left=�6[   $��Center=�6v   5      5      �� 5   
   $	��200��6   $��Operator��6    $	��211��62   $
��Left=�6>   $��Center=�6Y   $ 10��6t   $	 589��6�   .��5      �� .+�5      �� -   5         ��Name$ btn_Add��5      $	��Add��6*   $
��Left=�68   $	��Top=�6S   $	��160��6k   $ 20��6w   $ 10��6�   6�   �� 5      -   5        $ 
btn_Update��5      $��Update��6-   $	��160��6>   $ 20��6J   $ 51��6[   $��Center=�6k   $	��Top=�6�   6�   �� 5      -   5        $ 
btn_Delete��5      $��Delete��6-   $	��160��6>   $ 20��6J   $ 89��6[   $��Center=�6k   $	��Top=�6�   6�   �� 5      -	   5        $ 	btn_Close��5      $��Close��6,   $	��160��6<   $ 20��6H   $	 131��6Y   $��Center=�6j   $	��Top=�6�   6�   5       5!      �� 5"   
   $	��188��6   $	��Car��6    $	��800��6-   $��Center=�69   $	 246��6V   $	��Top=�6g   .��5#      &   System.Windows.Controls.DataGrid  -
   5          Name$ dtg_Car��5#      $	��186��6(   $	��800��65   $��Center=�6l   $	 248��6�   $	��Top=�6�   6�   5$      5%      5&      