import web_webview from '@ohos.web.webview';
import router from '@ohos.router';
import StyleConstants from '../common/constants/StyleConstants';
import CommonConstants from '../common/constants/CommonConstants';

class Item{
  name: String
  image: ResourceStr
  introduce1: String
  introduce2: String

  constructor(name:string, image:ResourceStr, introduce1:string, introduce2:string){
    this.name = name
    this.image = image
    this.introduce1 = introduce1
    this.introduce2 = introduce2
  }
}

@Entry
@Component
struct Home {
  @State changeFontSize: number = 16;
  @State fontSizeText: Resource = $r("app.string.set_size_normal");


  private items: Array<Item> = [

  ]
  webviewController: web_webview.WebviewController = new web_webview.WebviewController();

  build() {
    Column() {
      Column() {
        Tabs({ barPosition: BarPosition.End }) {
          TabContent() {
            Column() {
              Column() {
                Row() {
                  Search({})
                    .width("75%")
                    .height("27vp")
                    .margin({ top: "5vp", left: "6vp" })
                  Image($r('app.media.Home_lishiguankan'))
                    .width("30vp")
                    .height("30vp")
                    .margin({ top: "5vp", left: "10vp" })
                  Image($r('app.media.Home_xiazai'))
                    .width("30vp")
                    .height("30vp")
                    .margin({ top: "5vp", left: "8vp" })
                }
                .width("100%")
                .height("35vp")
                Row() {
                  Text("推荐")
                    .width("20%")
                    .height("30vp")
                    .fontColor(Color.White)
                    .textAlign(TextAlign.Center)
                    .fontSize("14fp")
                  Text("电视剧")
                    .width("20%")
                    .height("30vp")
                    .fontColor(Color.White)
                    .textAlign(TextAlign.Center)
                    .fontSize("14fp")
                  Text("电影")
                    .width("20%")
                    .height("30vp")
                    .fontColor(Color.White)
                    .textAlign(TextAlign.Center)
                    .fontSize("14fp")
                  Text("动漫")
                    .width("20%")
                    .height("30vp")
                    .fontColor(Color.White)
                    .textAlign(TextAlign.Center)
                    .fontSize("14fp")
                  Text("综艺")
                    .width("20%")
                    .height("30vp")
                    .fontColor(Color.White)
                    .textAlign(TextAlign.Center)
                    .fontSize("14fp")
                }
                .width("100%")
                .height("30vp")
              }
              .width("100%")
              .height("10%")
              .backgroundColor("#5c91d6")
              .alignItems(HorizontalAlign.Start)

              Swiper() {
                Image($r('app.media.film2'))
                  .width("100%")
                  .height("200vp")
                Image($r('app.media.film3'))
                  .width("100%")
                  .height("200vp")
                Image($r('app.media.film1'))
                  .width("100%")
                  .height("200vp")
              }
              .width("100%")
              .height("200vp")
              .autoPlay(true)
              Row() {
                Text("近期热播")
                  .width("100%")
                  .height("100%")
                  .fontColor(Color.Black)
                  .margin({ top: "0vp", bottom: "0vp", left: "0vp" })
                  .padding({ left: "10vp" })
                  .textAlign(TextAlign.Start)
                  .lineHeight("0vp")
                  .fontSize("17fp")
              }
              .width("100%")
              .height("40vp")

              List() {
                ListItem() {
                  Row() {
                    Image($r('app.media.video1'))
                      .width("47%")
                      .height("100vp")
                      .offset({ x: "6vp", y: "0vp" })
                      .margin({ left: "0vp" })
                      .onClick(() => {
                        this.jumpVideoPlay()
                      })
                    Image($r('app.media.video2'))
                      .width("47%")
                      .height("100vp")
                      .offset({ x: "15.47vp", y: "0vp" })
                      .onClick(() => {
                        this.jumpWebviewPlay()
                      })
                    Row() {
                      Column() {
                        Text("很想很想你")
                          .width("100%")
                          .height("60%")
                          .fontColor(Color.Black)
                          .padding({ left: "0vp" })
                          .fontSize("14fp")
                        Text("檀健次周也冬日恋歌")
                          .width("100%")
                          .height("40%")
                          .fontColor(Color.Grey)
                          .padding({ left: "0vp" })
                          .fontSize("11fp")
                      }
                      .width("47%")
                      .height("100%")
                      .offset({ x: "6vp", y: "0" })
                      .onClick(() => {
                        this.jumpVideoPlay()
                      })

                      Column() {
                        Text("南海归墟")
                          .width("100%")
                          .height("60%")
                          .fontColor(Color.Black)
                          .padding({ left: "6vp" })
                          .fontSize("14fp")
                        Text("铁三角勇闯海盗新地图")
                          .width("100%")
                          .height("40%")
                          .fontColor(Color.Grey)
                          .padding({ left: "6vp" })
                          .fontSize("11fp")
                      }
                      .width("47%")
                      .height("100%")
                      .offset({ x: "15.47vp", y: "0vp" })
                      .onClick(() => {
                        this.jumpWebviewPlay()
                      })
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
                .height("140vp")

                ListItem() {
                  Row() {
                    Image($r('app.media.video3'))
                      .width("47%")
                      .height("100vp")
                      .offset({ x: "6vp", y: "0vp" })
                      .margin({ left: "0vp" })
                    Image($r('app.media.video4'))
                      .width("47%")
                      .height("100vp")
                      .offset({ x: "15.47vp", y: "0vp" })
                    Row() {
                      Column() {
                        Text("对你不止是喜欢")
                          .width("100%")
                          .height("60%")
                          .fontColor(Color.Black)
                          .padding({ left: "0vp" })
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
                .height("140vp")

                ListItem() {
                  Row() {
                    Image($r('app.media.video5'))
                      .width("47%")
                      .height("100vp")
                      .offset({ x: "6vp", y: "0vp" })
                      .margin({ left: "0vp" })
                    Image($r('app.media.video6'))
                      .width("47%")
                      .height("100vp")
                      .offset({ x: "15.47vp", y: "0vp" })
                    Row() {
                      Column() {
                        Text("黑白密码")
                          .width("100%")
                          .height("60%")
                          .fontColor(Color.Black)
                          .padding({ left: "0vp" })
                          .fontSize("14fp")
                        Text("王子奇田雨潜伏对决")
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
                        Text("宁安如梦")
                          .width("100%")
                          .height("60%")
                          .fontColor(Color.Black)
                          .padding({ left: "6vp" })
                          .fontSize("14fp")
                        Text("败露张凌赫全员疯爱")
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
                .height("140vp")

                ListItem() {
                  Row() {
                    Image($r('app.media.video1'))
                      .width("47%")
                      .height("100vp")
                      .offset({ x: "6vp", y: "0vp" })
                      .margin({ left: "0vp" })
                    Image($r('app.media.video2'))
                      .width("47%")
                      .height("100vp")
                      .offset({ x: "15.47vp", y: "0vp" })
                    Row() {
                      Column() {
                        Text("很想很想你")
                          .width("100%")
                          .height("60%")
                          .fontColor(Color.Black)
                          .padding({ left: "0vp" })
                          .fontSize("14fp")
                        Text("檀健次周也冬日恋歌")
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
                        Text("南海归墟")
                          .width("100%")
                          .height("60%")
                          .fontColor(Color.Black)
                          .padding({ left: "6vp" })
                          .fontSize("14fp")
                        Text("铁三角勇闯海盗新地图")
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
                .height("140vp")
              }
              .width("100%")
              .height("57%")
            }
            .width("100%")
            .height("93%")
            .alignItems(HorizontalAlign.Start)
          }
            .tabBar({ icon: $r('app.media.home'), text: "首页" })
          TabContent() {
            Column() {
              Image($r('app.media.list_picture'))
                .width("100%")
                .height("20%")
                .sourceSize({ width: 0, height: 0 })
              Tabs() {
                TabContent() {
                  List() {
                    ListItem() {
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
                      .height("100%")
                    }
                    .width("100%")
                    .height("125vp")

                    ListItem() {
                      Row() {
                        Image($r('app.media.video_2'))
                          .width("93vp")
                          .height("100%")
                          .margin({ left: "15vp" })
                        Column() {
                          Text("我们的美好生活")
                            .width("85%")
                            .height("30vp")
                            .fontColor(Color.Black)
                            .fontSize("15fp")
                            .fontWeight(FontWeight.Bold)
                          Text("2023 综艺 中国大陆")
                            .width("85%")
                            .height("30vp")
                            .fontColor(Color.Black)
                            .fontSize("12fp")
                          Text("导演: 内详")
                            .width("85%")
                            .height("25vp")
                            .fontColor(Color.Black)
                            .fontSize("12fp")
                          Text("主演: 林心如,谢娜,杨紫")
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
                      .height("100%")
                    }
                    .width("100%")
                    .height("125vp")

                    ListItem() {
                      Row() {
                        Image($r('app.media.video_3'))
                          .width("93vp")
                          .height("100%")
                          .margin({ left: "15vp" })
                        Column() {
                          Text("现在就出发")
                            .width("85%")
                            .height("30vp")
                            .fontColor(Color.Black)
                            .fontSize("15fp")
                            .fontWeight(FontWeight.Bold)
                          Text("2023 综艺 大陆")
                            .width("85%")
                            .height("30vp")
                            .fontColor(Color.Black)
                            .fontSize("12fp")
                          Text("导演: 未知")
                            .width("85%")
                            .height("25vp")
                            .fontColor(Color.Black)
                            .fontSize("12fp")
                          Text("主演: 沈腾,贾冰,范丞丞,魏大勋,白敬亭")
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
                      .height("100%")
                    }
                    .width("100%")
                    .height("125vp")

                    ListItem() {
                      Row() {
                        Image($r('app.media.video_4'))
                          .width("93vp")
                          .height("100%")
                          .margin({ left: "15vp" })
                        Column() {
                          Text("凡人修仙传全集")
                            .width("85%")
                            .height("30vp")
                            .fontColor(Color.Black)
                            .fontSize("15fp")
                            .fontWeight(FontWeight.Bold)
                          Text("2020 动漫 中国大陆")
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
                      .height("100%")
                    }
                    .width("100%")
                    .height("125vp")
                  }
                  .width("100%")
                  .height("90%")
                }
                  .tabBar({ text: "热播榜" })
                TabContent(){
                  List() {
                    ListItem() {
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
                      .height("100%")
                    }
                    .width("100%")
                    .height("125vp")

                    ListItem() {
                      Row() {
                        Image($r('app.media.video_2'))
                          .width("93vp")
                          .height("100%")
                          .margin({ left: "15vp" })
                        Column() {
                          Text("我们的美好生活")
                            .width("85%")
                            .height("30vp")
                            .fontColor(Color.Black)
                            .fontSize("15fp")
                            .fontWeight(FontWeight.Bold)
                          Text("2023 综艺 中国大陆")
                            .width("85%")
                            .height("30vp")
                            .fontColor(Color.Black)
                            .fontSize("12fp")
                          Text("导演: 内详")
                            .width("85%")
                            .height("25vp")
                            .fontColor(Color.Black)
                            .fontSize("12fp")
                          Text("主演: 林心如,谢娜,杨紫")
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
                      .height("100%")
                    }
                    .width("100%")
                    .height("125vp")

                    ListItem() {
                      Row() {
                        Image($r('app.media.video_3'))
                          .width("93vp")
                          .height("100%")
                          .margin({ left: "15vp" })
                        Column() {
                          Text("现在就出发")
                            .width("85%")
                            .height("30vp")
                            .fontColor(Color.Black)
                            .fontSize("15fp")
                            .fontWeight(FontWeight.Bold)
                          Text("2023 综艺 大陆")
                            .width("85%")
                            .height("30vp")
                            .fontColor(Color.Black)
                            .fontSize("12fp")
                          Text("导演: 未知")
                            .width("85%")
                            .height("25vp")
                            .fontColor(Color.Black)
                            .fontSize("12fp")
                          Text("主演: 沈腾,贾冰,范丞丞,魏大勋,白敬亭")
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
                      .height("100%")
                    }
                    .width("100%")
                    .height("125vp")

                    ListItem() {
                      Row() {
                        Image($r('app.media.video_4'))
                          .width("93vp")
                          .height("100%")
                          .margin({ left: "15vp" })
                        Column() {
                          Text("凡人修仙传全集")
                            .width("85%")
                            .height("30vp")
                            .fontColor(Color.Black)
                            .fontSize("15fp")
                            .fontWeight(FontWeight.Bold)
                          Text("2020 动漫 中国大陆")
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
                      .height("100%")
                    }
                    .width("100%")
                    .height("125vp")
                  }
                  .width("100%")
                  .height("90%")
                }
                  .tabBar({ text: "飙升榜" })
                TabContent(){
                  List() {
                    ListItem() {
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
                      .height("100%")
                    }
                    .width("100%")
                    .height("125vp")

                    ListItem() {
                      Row() {
                        Image($r('app.media.video_2'))
                          .width("93vp")
                          .height("100%")
                          .margin({ left: "15vp" })
                        Column() {
                          Text("我们的美好生活")
                            .width("85%")
                            .height("30vp")
                            .fontColor(Color.Black)
                            .fontSize("15fp")
                            .fontWeight(FontWeight.Bold)
                          Text("2023 综艺 中国大陆")
                            .width("85%")
                            .height("30vp")
                            .fontColor(Color.Black)
                            .fontSize("12fp")
                          Text("导演: 内详")
                            .width("85%")
                            .height("25vp")
                            .fontColor(Color.Black)
                            .fontSize("12fp")
                          Text("主演: 林心如,谢娜,杨紫")
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
                      .height("100%")
                    }
                    .width("100%")
                    .height("125vp")

                    ListItem() {
                      Row() {
                        Image($r('app.media.video_3'))
                          .width("93vp")
                          .height("100%")
                          .margin({ left: "15vp" })
                        Column() {
                          Text("现在就出发")
                            .width("85%")
                            .height("30vp")
                            .fontColor(Color.Black)
                            .fontSize("15fp")
                            .fontWeight(FontWeight.Bold)
                          Text("2023 综艺 大陆")
                            .width("85%")
                            .height("30vp")
                            .fontColor(Color.Black)
                            .fontSize("12fp")
                          Text("导演: 未知")
                            .width("85%")
                            .height("25vp")
                            .fontColor(Color.Black)
                            .fontSize("12fp")
                          Text("主演: 沈腾,贾冰,范丞丞,魏大勋,白敬亭")
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
                      .height("100%")
                    }
                    .width("100%")
                    .height("125vp")

                    ListItem() {
                      Row() {
                        Image($r('app.media.video_4'))
                          .width("93vp")
                          .height("100%")
                          .margin({ left: "15vp" })
                        Column() {
                          Text("凡人修仙传全集")
                            .width("85%")
                            .height("30vp")
                            .fontColor(Color.Black)
                            .fontSize("15fp")
                            .fontWeight(FontWeight.Bold)
                          Text("2020 动漫 中国大陆")
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
                      .height("100%")
                    }
                    .width("100%")
                    .height("125vp")
                  }
                  .width("100%")
                  .height("90%")
                }
                  .tabBar({ text: "热搜榜" })
                TabContent(){
                  List() {
                    ListItem() {
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
                      .height("100%")
                    }
                    .width("100%")
                    .height("125vp")

                    ListItem() {
                      Row() {
                        Image($r('app.media.video_2'))
                          .width("93vp")
                          .height("100%")
                          .margin({ left: "15vp" })
                        Column() {
                          Text("我们的美好生活")
                            .width("85%")
                            .height("30vp")
                            .fontColor(Color.Black)
                            .fontSize("15fp")
                            .fontWeight(FontWeight.Bold)
                          Text("2023 综艺 中国大陆")
                            .width("85%")
                            .height("30vp")
                            .fontColor(Color.Black)
                            .fontSize("12fp")
                          Text("导演: 内详")
                            .width("85%")
                            .height("25vp")
                            .fontColor(Color.Black)
                            .fontSize("12fp")
                          Text("主演: 林心如,谢娜,杨紫")
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
                      .height("100%")
                    }
                    .width("100%")
                    .height("125vp")

                    ListItem() {
                      Row() {
                        Image($r('app.media.video_3'))
                          .width("93vp")
                          .height("100%")
                          .margin({ left: "15vp" })
                        Column() {
                          Text("现在就出发")
                            .width("85%")
                            .height("30vp")
                            .fontColor(Color.Black)
                            .fontSize("15fp")
                            .fontWeight(FontWeight.Bold)
                          Text("2023 综艺 大陆")
                            .width("85%")
                            .height("30vp")
                            .fontColor(Color.Black)
                            .fontSize("12fp")
                          Text("导演: 未知")
                            .width("85%")
                            .height("25vp")
                            .fontColor(Color.Black)
                            .fontSize("12fp")
                          Text("主演: 沈腾,贾冰,范丞丞,魏大勋,白敬亭")
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
                      .height("100%")
                    }
                    .width("100%")
                    .height("125vp")

                    ListItem() {
                      Row() {
                        Image($r('app.media.video_4'))
                          .width("93vp")
                          .height("100%")
                          .margin({ left: "15vp" })
                        Column() {
                          Text("凡人修仙传全集")
                            .width("85%")
                            .height("30vp")
                            .fontColor(Color.Black)
                            .fontSize("15fp")
                            .fontWeight(FontWeight.Bold)
                          Text("2020 动漫 中国大陆")
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
                      .height("100%")
                    }
                    .width("100%")
                    .height("125vp")
                  }
                  .width("100%")
                  .height("90%")
                }
                  .tabBar({ text: "新片榜" })
                TabContent(){
                  List() {
                    ListItem() {
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
                      .height("100%")
                    }
                    .width("100%")
                    .height("125vp")

                    ListItem() {
                      Row() {
                        Image($r('app.media.video_2'))
                          .width("93vp")
                          .height("100%")
                          .margin({ left: "15vp" })
                        Column() {
                          Text("我们的美好生活")
                            .width("85%")
                            .height("30vp")
                            .fontColor(Color.Black)
                            .fontSize("15fp")
                            .fontWeight(FontWeight.Bold)
                          Text("2023 综艺 中国大陆")
                            .width("85%")
                            .height("30vp")
                            .fontColor(Color.Black)
                            .fontSize("12fp")
                          Text("导演: 内详")
                            .width("85%")
                            .height("25vp")
                            .fontColor(Color.Black)
                            .fontSize("12fp")
                          Text("主演: 林心如,谢娜,杨紫")
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
                      .height("100%")
                    }
                    .width("100%")
                    .height("125vp")

                    ListItem() {
                      Row() {
                        Image($r('app.media.video_3'))
                          .width("93vp")
                          .height("100%")
                          .margin({ left: "15vp" })
                        Column() {
                          Text("现在就出发")
                            .width("85%")
                            .height("30vp")
                            .fontColor(Color.Black)
                            .fontSize("15fp")
                            .fontWeight(FontWeight.Bold)
                          Text("2023 综艺 大陆")
                            .width("85%")
                            .height("30vp")
                            .fontColor(Color.Black)
                            .fontSize("12fp")
                          Text("导演: 未知")
                            .width("85%")
                            .height("25vp")
                            .fontColor(Color.Black)
                            .fontSize("12fp")
                          Text("主演: 沈腾,贾冰,范丞丞,魏大勋,白敬亭")
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
                      .height("100%")
                    }
                    .width("100%")
                    .height("125vp")

                    ListItem() {
                      Row() {
                        Image($r('app.media.video_4'))
                          .width("93vp")
                          .height("100%")
                          .margin({ left: "15vp" })
                        Column() {
                          Text("凡人修仙传全集")
                            .width("85%")
                            .height("30vp")
                            .fontColor(Color.Black)
                            .fontSize("15fp")
                            .fontWeight(FontWeight.Bold)
                          Text("2020 动漫 中国大陆")
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
                      .height("100%")
                    }
                    .width("100%")
                    .height("125vp")
                  }
                  .width("100%")
                  .height("90%")
                }
                  .tabBar({ text: "电视剧" })
                TabContent(){
                  List() {
                    ListItem() {
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
                      .height("100%")
                    }
                    .width("100%")
                    .height("125vp")

                    ListItem() {
                      Row() {
                        Image($r('app.media.video_2'))
                          .width("93vp")
                          .height("100%")
                          .margin({ left: "15vp" })
                        Column() {
                          Text("我们的美好生活")
                            .width("85%")
                            .height("30vp")
                            .fontColor(Color.Black)
                            .fontSize("15fp")
                            .fontWeight(FontWeight.Bold)
                          Text("2023 综艺 中国大陆")
                            .width("85%")
                            .height("30vp")
                            .fontColor(Color.Black)
                            .fontSize("12fp")
                          Text("导演: 内详")
                            .width("85%")
                            .height("25vp")
                            .fontColor(Color.Black)
                            .fontSize("12fp")
                          Text("主演: 林心如,谢娜,杨紫")
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
                      .height("100%")
                    }
                    .width("100%")
                    .height("125vp")

                    ListItem() {
                      Row() {
                        Image($r('app.media.video_3'))
                          .width("93vp")
                          .height("100%")
                          .margin({ left: "15vp" })
                        Column() {
                          Text("现在就出发")
                            .width("85%")
                            .height("30vp")
                            .fontColor(Color.Black)
                            .fontSize("15fp")
                            .fontWeight(FontWeight.Bold)
                          Text("2023 综艺 大陆")
                            .width("85%")
                            .height("30vp")
                            .fontColor(Color.Black)
                            .fontSize("12fp")
                          Text("导演: 未知")
                            .width("85%")
                            .height("25vp")
                            .fontColor(Color.Black)
                            .fontSize("12fp")
                          Text("主演: 沈腾,贾冰,范丞丞,魏大勋,白敬亭")
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
                      .height("100%")
                    }
                    .width("100%")
                    .height("125vp")

                    ListItem() {
                      Row() {
                        Image($r('app.media.video_4'))
                          .width("93vp")
                          .height("100%")
                          .margin({ left: "15vp" })
                        Column() {
                          Text("凡人修仙传全集")
                            .width("85%")
                            .height("30vp")
                            .fontColor(Color.Black)
                            .fontSize("15fp")
                            .fontWeight(FontWeight.Bold)
                          Text("2020 动漫 中国大陆")
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
                      .height("100%")
                    }
                    .width("100%")
                    .height("125vp")
                  }
                  .width("100%")
                  .height("90%")
                }
                  .tabBar({ text: "电影" })
                TabContent(){
                  List() {
                    ListItem() {
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
                      .height("100%")
                    }
                    .width("100%")
                    .height("125vp")

                    ListItem() {
                      Row() {
                        Image($r('app.media.video_2'))
                          .width("93vp")
                          .height("100%")
                          .margin({ left: "15vp" })
                        Column() {
                          Text("我们的美好生活")
                            .width("85%")
                            .height("30vp")
                            .fontColor(Color.Black)
                            .fontSize("15fp")
                            .fontWeight(FontWeight.Bold)
                          Text("2023 综艺 中国大陆")
                            .width("85%")
                            .height("30vp")
                            .fontColor(Color.Black)
                            .fontSize("12fp")
                          Text("导演: 内详")
                            .width("85%")
                            .height("25vp")
                            .fontColor(Color.Black)
                            .fontSize("12fp")
                          Text("主演: 林心如,谢娜,杨紫")
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
                      .height("100%")
                    }
                    .width("100%")
                    .height("125vp")

                    ListItem() {
                      Row() {
                        Image($r('app.media.video_3'))
                          .width("93vp")
                          .height("100%")
                          .margin({ left: "15vp" })
                        Column() {
                          Text("现在就出发")
                            .width("85%")
                            .height("30vp")
                            .fontColor(Color.Black)
                            .fontSize("15fp")
                            .fontWeight(FontWeight.Bold)
                          Text("2023 综艺 大陆")
                            .width("85%")
                            .height("30vp")
                            .fontColor(Color.Black)
                            .fontSize("12fp")
                          Text("导演: 未知")
                            .width("85%")
                            .height("25vp")
                            .fontColor(Color.Black)
                            .fontSize("12fp")
                          Text("主演: 沈腾,贾冰,范丞丞,魏大勋,白敬亭")
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
                      .height("100%")
                    }
                    .width("100%")
                    .height("125vp")

                    ListItem() {
                      Row() {
                        Image($r('app.media.video_4'))
                          .width("93vp")
                          .height("100%")
                          .margin({ left: "15vp" })
                        Column() {
                          Text("凡人修仙传全集")
                            .width("85%")
                            .height("30vp")
                            .fontColor(Color.Black)
                            .fontSize("15fp")
                            .fontWeight(FontWeight.Bold)
                          Text("2020 动漫 中国大陆")
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
                      .height("100%")
                    }
                    .width("100%")
                    .height("125vp")
                  }
                  .width("100%")
                  .height("90%")
                }
                  .tabBar({ text: "综艺" })
                TabContent(){
                  List() {
                    ListItem() {
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
                      .height("100%")
                    }
                    .width("100%")
                    .height("125vp")

                    ListItem() {
                      Row() {
                        Image($r('app.media.video_2'))
                          .width("93vp")
                          .height("100%")
                          .margin({ left: "15vp" })
                        Column() {
                          Text("我们的美好生活")
                            .width("85%")
                            .height("30vp")
                            .fontColor(Color.Black)
                            .fontSize("15fp")
                            .fontWeight(FontWeight.Bold)
                          Text("2023 综艺 中国大陆")
                            .width("85%")
                            .height("30vp")
                            .fontColor(Color.Black)
                            .fontSize("12fp")
                          Text("导演: 内详")
                            .width("85%")
                            .height("25vp")
                            .fontColor(Color.Black)
                            .fontSize("12fp")
                          Text("主演: 林心如,谢娜,杨紫")
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
                      .height("100%")
                    }
                    .width("100%")
                    .height("125vp")

                    ListItem() {
                      Row() {
                        Image($r('app.media.video_3'))
                          .width("93vp")
                          .height("100%")
                          .margin({ left: "15vp" })
                        Column() {
                          Text("现在就出发")
                            .width("85%")
                            .height("30vp")
                            .fontColor(Color.Black)
                            .fontSize("15fp")
                            .fontWeight(FontWeight.Bold)
                          Text("2023 综艺 大陆")
                            .width("85%")
                            .height("30vp")
                            .fontColor(Color.Black)
                            .fontSize("12fp")
                          Text("导演: 未知")
                            .width("85%")
                            .height("25vp")
                            .fontColor(Color.Black)
                            .fontSize("12fp")
                          Text("主演: 沈腾,贾冰,范丞丞,魏大勋,白敬亭")
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
                      .height("100%")
                    }
                    .width("100%")
                    .height("125vp")

                    ListItem() {
                      Row() {
                        Image($r('app.media.video_4'))
                          .width("93vp")
                          .height("100%")
                          .margin({ left: "15vp" })
                        Column() {
                          Text("凡人修仙传全集")
                            .width("85%")
                            .height("30vp")
                            .fontColor(Color.Black)
                            .fontSize("15fp")
                            .fontWeight(FontWeight.Bold)
                          Text("2020 动漫 中国大陆")
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
                      .height("100%")
                    }
                    .width("100%")
                    .height("125vp")
                  }
                  .width("100%")
                  .height("90%")
                }
                  .tabBar({ text: "动漫" })
              }
              .barMode(BarMode.Scrollable)
              .barWidth('100%')
              .barHeight(60)
              .width("100%")
              .height("80%")
            }
            .width("100%")
            .height("93%")
          }
          .tabBar({ icon: $r('app.media.list'), text: "排行榜" })
          TabContent(){
            Web({ src: 'https://www.maoyan.com/', controller: this.webviewController})
          }
            .tabBar({ icon: $r('app.media.buy'), text: "买票" })
          TabContent() {
            Column() {
              Column() {
                Image($r('app.media.me_head'))
                  .width("80vp")
                  .height("80vp")
                  .offset({ x: "25vp", y: "18vp" })
                Row() {
                  Text("ID：123456789")
                    .width("100%")
                    .height("30%")
                    .offset({ x: "0vp", y: "56vp" })
                    .fontColor(Color.Black)
                    .fontStyle(FontStyle.Italic)
                  Text("用户：12345")
                    .width("100%")
                    .height("70%")
                    .offset({ x: "-200vp", y: "0vp" })
                    .fontColor(Color.Black)
                    .fontSize("17fp")
                    .fontStyle(FontStyle.Italic)
                }
                .width("200vp")
                .height("80vp")
                .offset({ x: "124.54vp", y: "-62vp" })
                .alignItems(VerticalAlign.Top)
              }
              .width("100%")
              .height("20%")
              .backgroundImage($r('app.media.me_bg'))
              .backgroundImageSize(ImageSize.Cover)
              .backgroundImagePosition(Alignment.TopEnd)
              .alignItems(HorizontalAlign.Start)
              List() {
                ListItem() {
                  Row() {
                    Image($r('app.media.me_historyview'))
                      .width("40vp")
                      .height("40vp")
                      .margin({ left: "6vp" })
                    Text("观看历史")
                      .width("200vp")
                      .height("100%")
                      .fontColor(Color.Black)
                      .margin({ left: "15vp" })
                      .fontSize(this.changeFontSize)
                    Image($r('app.media.me_login'))
                      .width("20vp")
                      .height("20vp")
                      .offset({ x: "70vp", y: "0vp" })
                  }
                  .width("100%")
                  .height("100%")
                  .onClick(() => {
                    this.jumpHistory()
                  })
                }
                .width("100%")
                .height("40vp")
                .margin({ top: "30vp" })
                ListItem() {
                  Row() {
                    Image($r('app.media.me_collect'))
                      .width("42vp")
                      .height("35vp")
                      .margin({ left: "10vp" })
                    Text("我的收藏")
                      .width("200vp")
                      .height("100%")
                      .fontColor(Color.Black)
                      .margin({ left: "8vp" })
                      .fontSize(this.changeFontSize)
                    Image($r('app.media.me_login'))
                      .width("20vp")
                      .height("20vp")
                      .offset({ x: "70vp", y: "0vp" })
                  }
                  .width("100%")
                  .height("100%")
                  .onClick(() => {
                    this.jumpMecollect()
                  })
                }
                .width("100%")
                .height("40vp")
                .margin({ top: "10vp" })
                ListItem() {
                  Row() {
                    Image($r('app.media.me_download'))
                      .width("35vp")
                      .height("35vp")
                      .margin({ left: "10vp" })
                    Text("我的下载")
                      .width("200vp")
                      .height("100%")
                      .fontColor(Color.Black)
                      .margin({ left: "15vp" })
                      .fontSize(this.changeFontSize)
                    Image($r('app.media.me_login'))
                      .width("20vp")
                      .height("20vp")
                      .offset({ x: "70vp", y: "0vp" })
                  }
                  .width("100%")
                  .height("100%")
                }
                .width("100%")
                .height("40vp")
                .margin({ top: "10vp" })
                ListItem() {
                  Row() {
                    Image($r('app.media.me_upload'))
                      .width("35vp")
                      .height("35vp")
                      .margin({ left: "10vp" })
                    Text("上传视频")
                      .width("200vp")
                      .height("100%")
                      .fontColor(Color.Black)
                      .margin({ left: "15vp" })
                      .fontSize(this.changeFontSize)
                    Image($r('app.media.me_login'))
                      .width("20vp")
                      .height("20vp")
                      .offset({ x: "70vp", y: "0vp" })
                  }
                  .width("100%")
                  .height("100%")
                }
                .width("100%")
                .height("40vp")
                .margin({ top: "10vp" })
                ListItem() {
                  Row() {
                    Image($r('app.media.me_feedback'))
                      .width("35vp")
                      .height("35vp")
                      .margin({ left: "10vp" })
                    Text("意见反馈")
                      .width("200vp")
                      .height("100%")
                      .fontColor(Color.Black)
                      .margin({ left: "15vp" })
                      .fontSize(this.changeFontSize)
                    Image($r('app.media.me_login'))
                      .width("20vp")
                      .height("20vp")
                      .offset({ x: "70vp", y: "0vp" })
                  }
                  .width("100%")
                  .height("100%")
                }
                .width("100%")
                .height("40vp")
                .margin({ top: "10vp" })
                ListItem() {
                  Row() {
                    Image($r('app.media.me_set'))
                      .width("35vp")
                      .height("35vp")
                      .margin({ left: "10vp" })
                    Text("设置字体大小")
                      .width("200vp")
                      .height("100%")
                      .fontColor(Color.Black)
                      .margin({ left: "15vp" })
                      .fontSize(this.changeFontSize)
                    Image($r('app.media.me_login'))
                      .width("20vp")
                      .height("20vp")
                      .offset({ x: "70vp", y: "0vp" })
                  }
                  .width("100%")
                  .height("100%")
                }
                .width("100%")
                .height("40vp")
                .margin({ top: "10vp" })
              }
              .width("100%")
              SliderLayout({ fontSizeText: $fontSizeText, changeFontSize: $changeFontSize })
            }
            .width("100%")
            .height("93%")
            .backgroundImageSize(ImageSize.Cover)
            .alignItems(HorizontalAlign.Start)
            .justifyContent(FlexAlign.Start)
          }
          .tabBar({ icon: $r('app.media.me'), text: "我的" })
        }
        .width("100%")
        .height("100%")
      }
      .width("100%")
      .height("100%")
      .justifyContent(FlexAlign.Center)
    }
    .width("100%")
    .height("100%")
  }

  private jumpVideoPlay() {
    router.pushUrl({
      url: 'pages/LocalVideoPlay'
    });
  }
  private jumpWebviewPlay() {
    router.pushUrl({
      url: 'pages/WebVideoPage'
    });
  }
  private jumpHistory() {
    router.pushUrl({
      url: 'pages/History'
    });
  }
  private jumpMecollect() {
    router.pushUrl({
      url: 'pages/Mecollect'
    });
  }
}


@Component
struct SliderLayout {
  @Link fontSizeText: Resource;
  @Link changeFontSize: number;

  build() {
    Column() {
      Text($r('app.string.set_font_size'))
        .fontSize($r('app.float.set_text'))
        .fontColor($r('app.color.text'))
        .margin({ left: StyleConstants.SLIDER_LAYOUT_LEFT_PERCENT, top: StyleConstants.SLIDER_LAYOUT_TOP_PERCENT })
        .fontWeight(FontWeight.Medium)

      Column() {
        Text(this.fontSizeText)
          .fontSize($r('app.float.set_text'))
          .fontColor($r('app.color.text'))

        Row() {
          Text($r('app.string.set_char_a'))
            .fontColor($r('app.color.text'))
            .fontSize($r('app.float.set_small_a'))
            .fontWeight(FontWeight.Medium)
            .textAlign(TextAlign.End)
            .width(StyleConstants.A_WIDTH_PERCENT)
            .padding({ right: $r('app.float.a_right_padding') })

          Slider({
            value: this.changeFontSize === CommonConstants.SET_SIZE_HUGE
              ? CommonConstants.SET_SLIDER_MAX : this.changeFontSize,
            min: CommonConstants.SET_SLIDER_MIN,
            max: CommonConstants.SET_SLIDER_MAX,
            step: CommonConstants.SET_SLIDER_STEP,
            style: SliderStyle.InSet
          })
            .showSteps(true)
            .width(StyleConstants.SLIDER_WIDTH_PERCENT)
            .onChange(async (value: number) => {
              if (this.changeFontSize === 0) {
                this.changeFontSize = 16;
                this.fontSizeText = this.getTextByFontSize(value);
                return;
              }
              this.changeFontSize = (value === CommonConstants.SET_SLIDER_MAX ?
              CommonConstants.SET_SIZE_HUGE : value);
              this.fontSizeText = this.getTextByFontSize(this.changeFontSize);
            })

          Text($r('app.string.set_char_a'))
            .fontColor($r('app.color.text'))
            .fontSize($r('app.float.set_big_a'))
            .fontWeight(FontWeight.Bold)
            .width(StyleConstants.A_WIDTH_PERCENT)
            .padding({ left: $r('app.float.a_left_padding') })
        }
      }
      .backgroundColor(Color.White)
      .borderRadius($r('app.float.block_background_radius'))
      .width(StyleConstants.BLOCK_WIDTH_PERCENT)
      .padding({ top: $r('app.float.slider_top_padding'), bottom: $r('app.float.slider_bottom_padding') })
      .margin({
        left: StyleConstants.SLIDER_HORIZONTAL_MARGIN_PERCENT,
        right: StyleConstants.SLIDER_HORIZONTAL_MARGIN_PERCENT,
        top: StyleConstants.SLIDER_TOP_MARGIN_PERCENT,
        bottom: StyleConstants.SLIDER_BOTTOM_MARGIN_PERCENT
      })
    }
    .alignItems(HorizontalAlign.Start)
    .justifyContent(FlexAlign.End)
  }

  getTextByFontSize(fontSize: number) {
    let fontSizeText: Resource | string = '';
    switch (fontSize) {
      case CommonConstants.SET_SIZE_SMALL:
        fontSizeText = $r('app.string.set_size_small');
        break;
      case CommonConstants.SET_SIZE_NORMAL:
        fontSizeText = $r("app.string.set_size_normal");
        break;
      case CommonConstants.SET_SIZE_LARGE:
        fontSizeText = $r("app.string.set_size_large");
        break;
      case CommonConstants.SET_SIZE_EXTRA_LARGE:
        fontSizeText = $r("app.string.set_size_extra_large");
        break;
      case CommonConstants.SET_SIZE_HUGE:
        fontSizeText = $r("app.string.set_size_huge");
        break;
      default:
        fontSizeText = $r("app.string.set_size_normal");
    }
    return fontSizeText;
  }
}
