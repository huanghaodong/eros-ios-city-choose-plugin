<template> 
    <div>
        <text @click="showCityPicker">Click me!</text>
    </div>
</template>
<script>

const  choosecity = weex.requireModule('choosecity');
export default {
    data () {
        return {}
    },
    methods: {
      choosecity.open({
      setSubmitText:'确定',//确定按钮文字
      setCancelText:'取消',//取消按钮文字
      setTitleText:'地区选择',//标题文字
      setSubCalSize:14,//确定取消按钮文字大小
      setTitleSize:14,//标题文字大小
      setTitleColor:'#000000',//标题文字颜色
      setSubmitColor:'#000000',//确定文字颜色
      setCancelColor:'#000000',//取消文字颜色
      addressType:'custom',//'custom':自定义地区数据，在如下address中定义  'defalut':使用自带默认数据
      address:[{
        name:"重庆",
        code:"12",
        city:[
          {
            name:"重庆区县",
            code:"13",
            area:[
              {
                name:"彭水",
                code:"14"
              }
            ]
          }
        ]
      }],//自定义的数据，数据格式必须与该格式一致
    },(place)=>{

    })
    }
}
</script>