   M S B A M L   `   `   `  ����P  LCarManagementSolution, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:CarManagementSolutionCarManagementSolution  5   	   +    %CarManagementSolution.EvaluatorWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   5local#clr-namespace:CarManagementSolution     5   	     � Title$  EvaluatorWindow��5   	   $	��450��6!   $	��800��6.   .��5	      �� .+�5
   
   �� $	��200��6   $��Information��6    $	��569��65   $
��Left=�6A   $	��Top=�6\    �� Left$ 10��6t   
 �� Top$ 10��6�    J� RenderTransformOrigin$ 0.484,0.184&�6�   .��5      �� .+�5      �� $��PriceForHoliday��6   $ 62��62   $
��Left=�6B   $��Center=�6]   $	��134��6x   �� 5      $��PriceForNormalDay��6   $ 5��64   $
��Left=�6C   $��Center=�6^   $	��134��6y   �� 5      $��PriceForWeekendDay��6   $ 31��65   $
��Left=�6E   $��Center=�6`   $	��134��6{   �� 5      $��PricePerHour��6   $ 93��6/   $��Center=�6?   $��Center=�6\   $	��134��6w   �� 5      $��Class��6   $	 151��6(   $
��Left=�69   $��Center=�6T   $	��131��6o   �� 5      -   5         ��Name$ txt_Holiday��5      $	 179��6/    �� TextWrapping$
 Wrap=�6A   $ 66��6U   $	��363��6e   $
��Left=�6q   $��Center=�6�   �� 5      -   5        $ txt_Hour��5      $	 179��6,   $
 Wrap=�6>   $ 97��6S   $	��363��6c   $
��Left=�6o   $��Center=�6�   �� 5      -   5        $ txt_NormalDay��5      $	 179��61   $
 Wrap=�6C   $ 9��6X   $	��363��6g   $
��Left=�6s   $��Center=�6�   �� 5      -   5        $ txt_WeekendDay��5      $	 179��62   $
 Wrap=�6D   $ 35��6Y   $	��363��6i   $
��Left=�6u   $��Center=�6�   �� 5      -   5         ��Name$ 	cmb_Class��5      $	 179��6.   $	 153��6@   $	��231��6Q   $
��Left=�6]   $��Center=�6x   �� 5      $��
PricePerKm��6   $	 124��6-   $
��Left=�6>   $��Center=�6Y   $	��134��6t   �� 5      -   5        $ txt_Km��5      $	 179��6*   $
 Wrap=�6<   $	 128��6P   $	��363��6a   $
��Left=�6m   $��Center=�6�   5      5      �� 5   
   $	��200��6   $��Operator��6    $	��211��62   $
��Left=�6>   $��Center=�6Y   $ 10��6t   $	 589��6�   .��5      �� .+�5      �� -   5         ��Name$ btn_Add��5      $	��Add��6*   $��Center=�68   $	��Top=�6U   $	��160��6m   $ 20��6y   $ 10��6�   $��61��6�   �� 5      -   5        $ 	btn_Close��5      $��Close��6,   $	��160��6<   $ 20��6H   $ 88��6Y   $��Center=�6i   $��Center=�6�   $��63��6�   6�   5       5!      �� 5"   
   $	��188��6   $	��Car��6    $	��800��6-   $��Center=�69   $	 246��6V   $	��Top=�6g   .��5#      &   System.Windows.Controls.DataGrid  -	   5          Name$ dtg_Car��5#      $	��186��6(   $	��800��65   $��Center=�6l   $	 248��6�   $	��Top=�6�   6�   5$      5%      5&      