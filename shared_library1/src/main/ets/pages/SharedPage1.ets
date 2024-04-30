import router from '@ohos.router'

//页面
@Entry
@Component
export struct SharedPage1 {
  @State message: string = 'SharedPage1'

  build() {
    Row() {
      Column({ space: 10 }) {
        Text(this.message)
          .fontSize(50)
          .fontColor($r('app.color.blue'))
          .fontWeight(FontWeight.Bold)

        Button("hsp内跳转")
          .onClick(() => {
            // router.pushUrl({ url: 'pages/Page1' }) //这种无效，无法跳转
            router.pushUrl({ url: '@bundle:com.my.hsp_dev_demo/shared_library1/ets/pages/Page1' })
          })

        // 实际上该Image组件访问的是HSP调用方（如entry）下的资源entry/src/main/ets/common1/miki.png
        Image("common1/miki.png")
          .width(100)
          .height(100)


        Image($r('app.media.setting'))
          .width(100)
          .height(100)
      }
      .width('100%')
    }
    .height('100%')
  }
}