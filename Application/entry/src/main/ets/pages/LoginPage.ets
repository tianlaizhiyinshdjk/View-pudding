import prompt from '@ohos.prompt'
import router from '@ohos.router'

@Entry
@Component
struct Demo {
  @State message: string = 'Hello World'
  @State user: string = ''
  @State password: string = ''

  build() {
    Column() {
      Column() {
        Text("用户登录")
          .width("200vp")
          .height("60vp")
          .offset({ x: "0vp", y: "70vp" })
          .fontColor(Color.White)
          .textAlign(TextAlign.Center)
          .fontSize("35fp")
        TextInput({ placeholder: "用户名：" })
          .width("240vp")
          .height("60vp")
          .offset({ x: "0vp", y: "110vp" })
          .placeholderFont({ size: 19 })
          .onChange((value: string) => {
            this.user = value;
          })
        TextInput({ placeholder: "密码：" })
          .width("240vp")
          .height("60vp")
          .offset({ x: "0vp", y: "150" +
            "vp" })
          .backgroundImage($r('app.media.bk4'))
          .type(InputType.Password)
          .placeholderFont({ size: 19 })
          .onChange((value: string) => {
            this.password = value;
          })
        Row() {
          Text("手机验证码登录：")
            .width("175.36vp")
            .height("50vp")
            .offset({ x: "8vp", y: "0vp" })
            .fontColor(Color.Black)
            .fontSize("16fp")
            .onClick(() => {
              router.pushUrl({url: 'pages/Index' } )
            })

          Text("忘记密码")
            .width("151.84vp")
            .height("50vp")
            .offset({ x: "5vp", y: "0vp" })
            .fontColor(Color.Black)
            .textAlign(TextAlign.End)
            .fontSize("16fp")
        }
        .width("100%")
        .height("48vp")
        .offset({ x: "0vp", y: "190vp" })
        Button("登录")
          .width("180vp")
          .height("48.64vp")
          .offset({ x: "0vp", y: "240vp" })
          .fontColor(Color.White)
          .fontSize("20fp")
          .onClick(() => {

            if (this.user == '' || this.password == '') {
              prompt.showToast({
                message: '用户名和密码不能为空！',
                duration: 3000
              });
            } else {
              if (this.user != 'f21011113' || this.password != 'mengwei') {
                prompt.showToast({
                  message: '用户名密码输入错误！',
                  duration: 3000
                });
              } else {
                router.replaceUrl({
                  url: 'pages/Home'

                });
              }
            }
          })

        Button("取消")
          .width("180vp")
          .height("48.64vp")
          .offset({ x: "0vp", y: "265vp" })
          .fontColor(Color.White)
          .fontSize("20fp")
        Row() {
          Image($r('app.media.qq'))
            .width("50vp")
            .height("50vp")
            .offset({ x: "65vp", y: "375vp" })

          Image($r('app.media.weixin'))
            .width("50vp")
            .height("50vp")
            .offset({ x: "107vp", y: "375vp" })

          Image($r('app.media.huawei'))
            .width("50vp")
            .height("50vp")
            .offset({ x: "150vp", y: "375vp" })
        }
        .width("360vp")
        .height("63.58vp")
      }
      .width("100%")
      .height("100%")

      .backgroundImage($r('app.media.bk4'))
      .backgroundImageSize(ImageSize.Cover)
      .alignItems(HorizontalAlign.Center)
      .justifyContent(FlexAlign.Start)
      }
    .width("100%")
    .height("100%")

  }
}