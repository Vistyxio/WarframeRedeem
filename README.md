# Warframe兑换码收集及简单兑换程序

PROMOCODES.txt是兑换码列表

# 方法一

1.下载Warframe兑换.bat和PROMOCODES.txt到同一文件夹

2.保证Warframe官网处于登陆状态

3.运行Warframe兑换.bat

4.会打开5个填好兑换码的网页

5.手动点击每个页面的SUBMIT CODE进行兑换

6.回到Warframe兑换.bat程序按任意键再次打开5个网页

7.重复直到全部兑换

# 方法二

1.下载生成js兑换码数组.bat和PROMOCODES.txt到同一文件夹

2.运行生成js兑换码数组.bat

3.打开[Warframe官网](https://www.warframe.com/)

4.登录Warframe帐号

5.按F12进入开发者工具页面

6.点击控制台

7.先将生成js兑换码数组.bat生成的兑换码数组.txt中内容复制到控制台并回车执行

8.再将以下内容复制到控制台并回车执行

```javascript
for (var i = 0; i < PROMOCODES.length; i++) {
	const WFwindow = window.open('https://www.warframe.com/promocode?code=' + PROMOCODES[i], '', 'width=600, height=400');
	WFwindow.onload = function(){ WFwindow.document.getElementById("btnSubmit").click(); }
}
```
