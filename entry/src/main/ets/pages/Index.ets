import { Log, add, MyTitleBar, R } from "@hsp_dev_demo/shared_library1"

import router from '@ohos.router';

@Entry
@Component
struct Index {
  aboutToAppear() {
    // let shared_library1_context = getContext().createModuleContext('shared_library1')
    // shared_library1_context.resourceManager.getMediaByName('setting')
  }

  build() {
    Row() {
      Column({ space: 10 }) {
        MyTitleBar({ tittle: "这是标题" })
        MyTitleBar()

        Text("哈哈哈哈")
          .fontColor(R.color.yello)

        Image(R.mipmap.lake)
          .width(100)
          .height(100)

        Button("进入hsp的页面")
          .onClick(() => {
            //模板：@bundle:<包名>/<模块名>/路径/<页面所在的文件名(不加.ets后缀)>
            router.pushUrl({ url: "@bundle:com.my.hsp_dev_demo/shared_library1/ets/pages/SharedPage1" })
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}