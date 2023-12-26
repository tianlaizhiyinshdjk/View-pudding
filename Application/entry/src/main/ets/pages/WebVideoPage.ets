import web_webview from '@ohos.web.webview';

@Entry
@Component
struct WebVideoPage {
  controller: web_webview.WebviewController = new web_webview.WebviewController();
  // Web控制器

  build() {
    Column({ space: 10 }) {

      Web({
        src: "https://v.qq.com/x/cover/mzc00200tl9nvn9/j0047a185to.html",
        controller: this.controller
      })
        .width("100%")
        .height("100%")
    }
    .width('100%')
    .height("100%")
    .padding(10)
  }

}