   M S B A M L   `   `   `  ����P  LCarManagementSolution, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:CarManagementSolutionCarManagementSolution  5   	   '    !CarManagementSolution.AdminWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   5local#clr-namespace:CarManagementSolution     5   	     � Title$  AdminWindow��5   	   $	��450��6   $	��800��6*   .��5	      �� .+�5
   
   �� $	��200��6   $��Information��6    $	��569��65   $
��Left=�6A   $	��Top=�6\    �� Left$ 10��6t   
 �� Top$ 10��6�    J� RenderTransformOrigin$ 0.484,0.184&�6�   .��5      �� .+�5      �� $��UserName��6   $ 10��6+   $
��Left=�6;   �� 5      $��Email��6   $ 52��6(   $ 1��68   �� 5      $��Password��6   $ 97��6+   �� 5      $	��Tel��6   $ 10��6&   $��Center=�66   $	 278��6S   $	��Top=�6e   �� 5      $	��Job��6   $ 52��6&   $��Center=�66   $	 278��6S   $	��Top=�6e   �� 5      $��CurrentAddress��6   $	 140��61   $
��Left=�6B   �� 5      $
��Role��6   $ 92��6'   $
��Left=�67   $	 278��6R   �� 5      -   5         ��Name$ txt_Username��5      $ 70��61    �� TextWrapping$
 Wrap=�6B   $ 14��6V   $	��203��6f   $
��Left=�6r   $��Center=�6�   �� 5      -   5        $ 	txt_Email��5      $ 70��6-   $
 Wrap=�6>   $ 56��6R   $	��203��6b   $��Center=�6n   $	��Top=�6�   �� 5      -   5        $ txt_Password��5      $ 70��60   $
 Wrap=�6A   $	 101��6U   $	��203��6f   $��Center=�6r   $	��Top=�6�   �� 5      -   5        $ txt_Currentaddress��5      $ 99��66   $
 Wrap=�6G   $	 144��6\   $	��448��6m   $
��Left=�6y   $��Center=�6�   �� 5      -   5        $ txt_Tel��5      $	 316��6+   $
 Wrap=�6=   $ 14��6R   $	��231��6b   $
��Left=�6n   $��Center=�6�   �� 5      -   5        $ txt_Job��5      $	 316��6+   $
 Wrap=�6=   $ 56��6R   $	��231��6b   $
��Left=�6n   $��Center=�6�   �� 5      -   5         ��Name$ cmb_Role��5      $	 316��6-   $ 94��6?   $	��231��6O   $
��Left=�6[   $��Center=�6v   5      5      �� 5   
   $	��200��6   $��Operator��6    $	��211��62   $
��Left=�6>   $��Center=�6Y   $ 10��6t   $	 589��6�   .��5      �� .+�5      �� -   5         ��Name$ btn_Add��5      $	��Add��6*   $
��Left=�68   $	��Top=�6S   $	��160��6k   $ 20��6w   $ 10��6�   6�   �� 5       -	   5        $ 
btn_Update��5       $��Update��6-   $	��160��6>   $ 20��6J   $ 51��6[   $��Center=�6k   $	��Top=�6�   6�   �� 5!      -
   5        $ 
btn_Delete��5!      $��Delete��6-   $	��160��6>   $ 20��6J   $ 89��6[   $��Center=�6k   $	��Top=�6�   6�   �� 5"      -   5        $ 	btn_Close��5"      $��Close��6,   $	��160��6<   $ 20��6H   $	 131��6Y   $��Center=�6j   $	��Top=�6�   6�   5$      5%      �� 5&   
   $	��188��6   $��Account��6    $	��800��61   $��Center=�6=   $	 246��6Z   $	��Top=�6k   .��5'      &   System.Windows.Controls.DataGrid  -   5          Name$ dtg_Account��5'      $	��186��6,   $	��800��69   $��Center=�6p   $	 248��6�   $	��Top=�6�   6�   5(      5)      5*      