import router from '@ohos.router';

@Entry
@Component
struct Mecollect {

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
        Image($r('app.media.video_1'))
          .width("93vp")
          .height("100%")
          .margin({ left: "15vp" })
        Column() {
          Text("斗破苍穹年番")
            .width("85%")
            .height("30vp")
            .fontColor(Color.Black)
            .fontSize("15fp")
            .fontWeight(FontWeight.Bold)
          Text("2022 动漫 中国大陆")
            .width("85%")
            .height("30vp")
            .fontColor(Color.Black)
            .fontSize("12fp")
          Text("导演: 内详")
            .width("85%")
            .height("25vp")
            .fontColor(Color.Black)
            .fontSize("12fp")
          Text("主演: 未知")
            .width("85%")
            .height("25vp")
            .fontColor(Color.Black)
            .fontSize("12fp")
        }
        .width("70%")
        .height("100%")
        .justifyContent(FlexAlign.Center)
      }
      .width("100%")
      .height("125vp")
      .offset({ x: "0vp", y: "-20vp" })
      .margin({ top: "5%", bottom: "0%", left: "0%", right: "0%" })
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