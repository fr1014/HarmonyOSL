import { router } from '@kit.ArkUI';
import { BusinessError } from '@kit.BasicServicesKit';

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    Column() {
      Text(this.message)
        .fontSize(50)
        .fontWeight(FontWeight.Bold)

      Button() {
        Text('Next')
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
      }
      .type(ButtonType.Capsule)
      .margin({top: 20})
      .backgroundColor('0D9FFB')
      .width('40%')
      .height('8%')
      .onClick(() => {
        router.pushUrl({ url: 'pages/HarmonyDocPage' }).then(() => {
          console.info('Succeeded in jumping to the second page.')
        }).catch((err: BusinessError) => {
          console.error(`Failed to jump to the second page. Code is ${err.code}, message is ${err.message}`)
        })
      })
    }
    .backgroundColor(Color.Orange)
    .width('100%')
    .height('100%')
  }
}