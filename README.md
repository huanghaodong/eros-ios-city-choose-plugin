

**ios集成方式**

安装 
====================================

1. 打开iOS目录`工程目录/platforms/ios/WeexEros`，编辑Podfile文件，增加以下代码；

```
 pod 'HHDCityPicker', :git => 'https://github.com/huanghaodong/eros-ios-city-choose-plugin.git', :tag => '0.0.2'
```

2. 到此目录下执行 `pod update`




## 使用

* 引用Module

	```js
	const choosecity = weex.requireModule('choosecity');
	```
	
* api

	```js
  	choosecity.open({
 			setSubmitText:'确定',//确定按钮文字
 			setCancelText:'取消',//取消按钮文字
			setTitleText:'地区选择',//标题文字
			setSubCalSize:14,//确定取消按钮文字大小
			setTitleSize:14,//标题文字大小
			setTitleColor:'#000000',//标题文字颜色
			setSubmitColor:'#000000',//确定文字颜色
			setCancelColor:'#000000',//取消文字颜色
 			},(place)=>{
              
    	})
  ```
 * 返回值
  ```js
    	'北京市,北京市,东城区'
  ```