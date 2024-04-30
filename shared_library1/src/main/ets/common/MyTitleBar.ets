// 自定义组件

@Component
export struct MyTitleBar {
  tittle: string

  build() {
    Row() {
      Text(this.tittle != undefined ? this.tittle : $r('app.string.default_tittle'))
        .fontColor($r('app.color.green'))
        .fontSize(25)
        .margin({ left: 15 })
    }
    .width('100%')
    .height(50)
    .padding({ left: 15 })
    .backgroundColor('#0D9FFB')
  }
}