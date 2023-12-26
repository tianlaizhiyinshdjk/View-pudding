import router from '@ohos.router';

@Entry
@Component
struct History {

  build() {
    Column({ space: 10}) {
      Text('返回')
        .width('100%')
        .height('5%')
        .textAlign(TextAlign.Start)
        .backgroundColor("#5c91d6")
        .padding({left:'15'})
        .margin({top:'-30',left:'0',bottom:'-5'})
        .onClick(() => {
          this.back()
        })
      Row() {
        Image($r('app.media.video3'))
          .width("47%")
          .height("100vp")
          .offset({ x: "6vp", y: "20vp" })
          .margin({ left: "0vp" })
        Image($r('app.media.video4'))
          .width("47%")
          .height("100vp")
          .offset({ x: "15.47vp", y: "20vp" })
        Row() {
          Column() {
            Text("对你不止是喜欢")
              .width("100%")
              .height("60%")
              .fontColor(Color.Black)
              .padding({ left: "0vp" })
              .margin({top:'20'})
              .fontSize("14fp")
            Text("魏哲鸣黄日莹反套路攻爱")
              .width("100%")
              .height("40%")
              .fontColor(Color.Grey)
              .padding({ left: "0vp" })
              .fontSize("11fp")
          }
          .width("47%")
          .height("100%")
          .offset({ x: "6vp", y: "0" })
          Column() {
            Text("小满生活")
              .width("100%")
              .height("60%")
              .fontColor(Color.Black)
              .padding({ left: "6vp" })
              .margin({top:'20'})
              .fontSize("14fp")
            Text("秦昊蒋欣闯换房历险局")
              .width("100%")
              .height("40%")
              .fontColor(Color.Grey)
              .padding({ left: "6vp" })
              .fontSize("11fp")
          }
          .width("47%")
          .height("100%")
          .offset({ x: "15.47vp", y: "0vp" })
        }
        .width("100%")
        .height("40vp")
        .offset({ x: "-338.4vp", y: "99.96vp" })
      }
      .width("100%")
      .height("100vp")
      .offset({ x: "0vp", y: "-20vp" })
      .margin({ top: "0%", bottom: "0%", left: "0%", right: "0%" })
      .padding({ top: "0%", bottom: "0%", left: "0%", right: "0%" })
      .alignItems(VerticalAlign.Top)
      }
    .width("100%")
    .height("100%")
    .margin({top: 40})
    }

  private back() {
    router.back({
      url: 'pages/Home'
    })
  }
}