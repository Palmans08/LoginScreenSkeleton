   M S B A M L   `   `   `  ����F  BLoginScreen, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:LoginScreen.LoginLoginScreen.Login  5      '    !LoginScreen.Login.LoginScreenPage   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      1localclr-namespace:LoginScreen.Login     5        N� Title$  LoginScreenPage��5	      .��5      �  � ColumnDefinitions 5   
   �� 5      �� 5      $	��400 �6   �� 5      .+�5   
   �� $��1��6   .+�5      �� $��Login��6   $	��400��5      $	��134��5      
������� �� TextAlignment$ Center=�5      $��36(�5       �� Padding$
 0 40q�5      �� 5       -   5         ��Name$ txtUsername��5       $��Username��5!      $��	0 40 0 10q�5"      
�������5#      �� 5%      -   5         ��Name$ txbUsername��5%      $��7q�5&      
������ 
�������5)      �� 5+      -   5        $ txtPassword��5+      $��Password��5,      $��	0 10 0 10q�5-      
�������5.      G� 50      -   5         G�Name$ psbPassword��50      $��7q�51      
������ 
�������54      �� 56      -   5        $ txtErrorMessage��56      $
��0 15q�57      ���#f00$��Center=�59      �� 5;      -   5         ��Name$ btnLogin��5;      $��LOG IN��5<      $	��200��5=      $��30��5>      
����������#39f5A      �� 5C      -   5        $ btnForgotPassword��5C         btnTransparentHoverHand#��[  5D      $��Forgot password?��5E      $
��Left=�5F      $	��150��5G      $��25��5H      $
��0 10q�5I      5K      �� 5M      -   5        $ btnCreateNewAcc��5M      #��[  5N      $��Create new account��5O      $	��150��5P      $��25��5Q      $
��Left=�5R      5T      5U      5V      5W      