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
          setSubmitText:"你好",
          setTitleText:"哈哈",
          setCancelText:"还行",
          setSubmitColor:"#FF2D4B",
          setTitleColor:"#FF2D4B",
          setCancelColor:"#FF2D4B",
          setTitleSize:10,
          setSubCalSize:10
          },(city)=>{
          this.$notice.toast({
            message: city,
            duration: 1
          })
         });
    }
}
</script>