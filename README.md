# Web-Camera
##项目介绍
这是我用树莓派3b来DIY的一款网络摄像头。  
该网络摄像头具有以下特点：  
* 利用RPi Camera作为摄像头，功能强大，使用方便。  
* 利用Apache作为服务器，并用路由器进行端口映射，摄像头所拍照片可在外网通过网页访问。

##制作流程
###材料准备
* 树莓派一个  
* RPi Camera一个

###接线方法

##程序编写
###Shell脚本编写
由于RPi Camera可以用Shell直接调用，这里我使用Shell来编写调用摄像头并保存图片的程序。  
代码如下：  

trap "echo 'stop';exit 0" SIGINT SIGKILL  
while :  
do  
    raspistill -o /var/www/html/webMonitor.jpg -t 1000 -w 256 -h 192  
done  

第一行代码用于退出循环，当按下Ctrl+C时，程序便会终止退出。  
接下来就是一个调用RPi Camera的死循环：  
-o后面紧跟的参数表示所拍图片的存储位置。  
-t 1000表示延时1000ms拍摄一张照片。  
-w 256 -h 192表示图片的宽度为256，图片的高度为192。
###HTML编写

