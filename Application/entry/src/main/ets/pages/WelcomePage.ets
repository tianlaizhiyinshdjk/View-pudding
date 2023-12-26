import router from '@ohos.router'

@Entry
@Component
struct WelcomePage {
  @State message: string = 'Hello World'

  aboutToAppear(){
    setTimeout(function() {
      router.replaceUrl({
        url: 'pages/LoginPage'
      })
    },9000)
  }

  build() {
    Column() {
      Column() {
        Swiper() {
            Stack({ alignContent: Alignment.Top }) {
              Image($r('app.media.bk1'))
                .width("100%")
                .height("100%")
              Text("布丁视频")
                .fontSize(35)
                .padding(100)
                .fontWeight(FontWeight.Bold)

            }

            Stack({ alignContent: Alignment.Top }) {
              Image($r('app.media.bk2'))
                .width("100%")
                .height("100%")
              Text("布丁视频")
                .fontSize(35)
                .padding(100)
                .fontWeight(FontWeight.Bold)

            }

            Stack({ alignContent: Alignment.Top }) {
              Image($r('app.media.bk3'))
                .width("100%")
                .height("100%")
              Text("布丁视频")
                .fontSize(35)
                .padding(100)
                .fontWeight(FontWeight.Bold)

            }
          .width("100%")
          .height("100%")
        }
        .width("100%")
        .height("100%")
        .autoPlay(true)
        .vertical(false)
      }
      .width("100%")
      .height("100%")
      .justifyContent(FlexAlign.Center)
    }
    .width("100%")
    .height("100%")
  }
}
