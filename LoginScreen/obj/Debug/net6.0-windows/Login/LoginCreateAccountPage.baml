   M S B A M L   `   `   `  ����F  BLoginScreen, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:LoginScreen.LoginLoginScreen.Login  5      .    (LoginScreen.Login.LoginCreateAccountPage   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      1localclr-namespace:LoginScreen.Login     5        N� Title$  LoginCreateAccountPage��5	      .��5      �  � ColumnDefinitions 5   
   �� 5      �� 5      $	��400 �6   �� 5      .+�5   
   �� -   5         ��Name$ btnBack��5      $��0��5         btnGrayHoverHand#��[  5      $��70��5      $��40��5      $��0,0,130,480q�5      .��5      �� $��\Images\back_arrow.png��6   $��50��64   $��20��6?   5      �� 5   
   $��1��6   .+�5      �� -   5         ��Name$ txtCreateAccount��5      $��Create new user��5      
�������$��Center=�5      $��24(�5      $
��0 15q�5       �� 5!       �� Orientation$ 
Horizontal=�6   $��	0 10 0 10q�62   .+�5"      �� $��Firstname *��6   
�������5#      �� 5$      $��
Lastname *��6   
�������$��	151 0 0 0q�5&      5'      �� 5(      $ 
Horizontal=�6   .+�5)      �� -   5         ��Name$ txbFirstname��5)      $	��190��5*      $��7q�5+      
������ 
�������5-      �� 5.      -   5        $ txbLastname��5.      $	��190��5/      $��20 0 0 0q�50      $��7q�51      
������ 
�������53      54      �� 55      -   5        $ txtUsername��55      $��
Username *��56      $��	0 10 0 10q�57      
�������58      �� 59      -   5        $ txbUsername��59      $��7q�5:      
������ 
�������5<      �� 5>      -   5        $ txtPassword��5>      $��
Password *��5?      $��	0 10 0 10q�5@      
�������5A      G� 5B      -   5         G�Name$ psbPassword��5B      $��7q�5C      
������ 
�������5E      �� 5G      -	   5        $ txtRepeatPassword��5G      $��Repeat Password *��5H      $��	0 10 0 10q�5I      
�������5J      G� 5K      -
   5        $ psbRepeatPassword��5K      $��7q�5L      
������ 
�������5N      �� 5P      -   5        $ txtVerificationCode��5P      $��Verification code *��5Q      $��	0 10 0 10q�5R      
�������5S      G� 5T      -   5        $ psbVerificationCode��5T      $��7q�5U      
������ 
�������5W      �� 5X      -   5        $ btnCreateAccount��5X      $��Create new account��5Y      $	��200��5Z      $��30��5[      $��0 30 0 0q�5\      
����������#39f5_      �� 5a      -   5        $ 
txtMessage��5a      $
��0 15q�5b      ���#f00$��Center=�5d      5e      5f      5g      