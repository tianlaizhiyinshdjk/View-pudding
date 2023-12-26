import router from '@ohos.router';
@Entry
@Component
struct LocalVideoPlay {
  private videoController: VideoController = new VideoController()

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
      Video({
        src: $rawfile("181_1703308941.mp4"), // 设置数据源
        controller: this.videoController                   // 设置控制器
      })
        .width('98%')
        .height(250)

      Row({ space: 10 }) {
        Button("开始播放")
          .onClick(() => {
            this.videoController.start()
          })
        Button("暂停播放")
          .onClick(() => {
            this.videoController.pause()
          })

        Button("继续播放")
          .onClick(() => {
            this.videoController.start()
          })
      }

      Row() {
        Button("全屏播放")
          .onClick(() => {
            this.videoController.requestFullscreen(true)
          })
        Button("退出全屏")
          .onClick(() => {
            this.videoController.exitFullscreen()
          })
      }

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