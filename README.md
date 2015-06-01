### Impage

一个用来分享图片的网站。

*WARNING：因为某些原因（其实就是没有信用卡= =），本人暂时无法使用Amazon的S3服务，所以在heroku中，图片并无法一直保存（当然，在本地运行是可以的）。如果您享有S3服务，可以参考aws-s3分支中的代码，此代码加入了对S3的支持，但未经测试！或者，参考heroku官方给出的文档*

* [Using AWS S3 to Store Static Assets and File Uploads](https://devcenter.heroku.com/articles/s3#s3-setup)
* [Direct to S3 Image Uploads in Rails](https://devcenter.heroku.com/articles/direct-to-s3-image-uploads-in-rails)
* [Uploading Files to S3 in Ruby with Paperclip](https://devcenter.heroku.com/articles/paperclip-s3)

##### 基本参数
* Ruby: 2.2.0
* Rails: 4.2.1
* Database: 
  * 本地：sqlite3
  * heroku: postgresql
* 用到的gem：参考gemfile

###### 界面

* 主界面1
  ![主界面1](/public/img/main_1.png)
* 主界面2
  ![主界面2](/public/img/main_2.png)
* show页面1
  ![图片单独界面1](/public/img/show_1.png)
* show页面2
  ![图片单独界面2](/public/img/show_2.png)
* 评论
  ![图片单独界面3](/public/img/comments.png)
* 新建
  ![新建](/public/img/new_post.png)
* 修改post
  ![修改图片](/public/img/edit_post.png)
* 注册
  ![注册界面](/public/img/sign_up.png)
* 登录
  ![登录界面](/public/img/login.png)
* 修改账户 
  ![修改账户](/public/img/edit_account.png)
