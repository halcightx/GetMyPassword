GetMyPassword
- copy right:
  - Xuyuan Guo
- Introduction:
  - It is written in ruby
  - This little program generates a complex password for you, which you don't have to remember. If you forget it, you can use GetMyPassword to calculate it for you. All you need is a universal key you know and the site name you are trying to log in.
  - User has to remember a universal key, for example: "abcd"
  - To generate a complex password, user needs to provide the key and the site name, for example: key = "abcd" site name = "gmail"
  - GetMyPassword will generate a password for you: "s90oX88VoB"
  - User uses this password to create his or her account.
  - User doesn't need to remember it. And it is stored nowhere.
  - When user need the password again to login his or her gmail, he or she could run GetMyPassword again to retrieve the password using his or her key:"abcd" and telling the program the site name:"gmail"
  - User can use his or her universal key:"abcd" for all sites or accounts he or she owns. For example, key:"abcd" + site:"facebook" = password:"82NqT.Bcq"
