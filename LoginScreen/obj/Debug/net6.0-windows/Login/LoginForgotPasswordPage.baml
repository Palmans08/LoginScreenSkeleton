   M S B A M L   `   `   `  ����F  BLoginScreen, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:LoginScreen.LoginLoginScreen.Login  5      /    )LoginScreen.Login.LoginForgotPasswordPage   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      1localclr-namespace:LoginScreen.Login     5        N� Title$  LoginForgotPasswordPage��5	      .��5      �  � ColumnDefinitions 5   
   �� 5      �� 5      $	��400 �6   �� 5      .+�5   
   �� -   5         ��Name$ btnBack��5      $��0��5         btnGrayHoverHand#��[  5      $��70��5      $��40��5      $��0,0,130,480q�5      .��5      �� $��\Images\back_arrow.png��6   $��50��64   $��20��6?   5      �� 5   
   $��1��6   .+�5      �� -   5         ��Name$ txtResetPassword��5      $��Reset password��5      
�������$��Center=�5      $��24(�5      $
��0 15q�5       �� 5"      -   5        $ txtUsername��5"      $��
Username *��5#      $��	0 10 0 10q�5$      
�������5%      �� 5&      -   5         ��Name$ txbUsername��5&      $��7q�5'      
������ 
�������5)      �� 5+      -   5        $ txtNewPassword��5+      $��New password *��5,      $��	0 10 0 10q�5-      
�������5.      G� 5/      -   5         G�Name$ psbNewPassword��5/      $��7q�50      
������ 
�������52      �� 54      -   5        $ txtRepeatNewPassword��54      $��Repeat new password *��55      $��	0 10 0 10q�56      
�������57      G� 58      -   5        $ psbRepeatNewPassword��58      $��7q�59      
������ 
�������5;      �� 5=      -	   5        $ txtVerificationCode��5=      $��Verification code *��5>      $��	0 10 0 10q�5?      
�������5@      G� 5A      -
   5        $ psbVerificationCode��5A      $��7q�5B      
������ 
�������5D      �� 5E      -   5        $ btnResetPassword��5E      $��Reset password��5F      $	��200��5G      $��30��5H      $��0 30 0 0q�5I      
����������#39f5L      �� 5N      -   5        $ 
txtMessage��5N      $
��0 15q�5O      ���#f00$��Center=�5Q      5R      5S      5T      