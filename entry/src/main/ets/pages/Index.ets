import { CustomTheme, } from '@kit.ArkUI';
import { THEME_PRESETS } from '../theme';

@Entry
@Component
struct Index {
  @State currentTheme: CustomTheme = THEME_PRESETS.blue;
  @State colorMode: ThemeColorMode = ThemeColorMode.LIGHT;
  @State selectedPalette: string = 'blue';
  @State isDarkMode: boolean = false;

  switchTheme(palette: string) {
    this.selectedPalette = palette;
    switch (palette) {
      case 'blue':
        this.currentTheme = THEME_PRESETS.blue;
        break;
      case 'purple':
        this.currentTheme = THEME_PRESETS.purple;
        break;
      case 'green':
        this.currentTheme = THEME_PRESETS.green;
        break;
    }
  }

  build() {
    WithTheme({ theme: this.currentTheme, colorMode: this.colorMode }) {
      Column() {
        Text('Theme Demo')
          .fontSize(24)
          .fontWeight(FontWeight.Bold)
          .fontColor(this.currentTheme.colors?.brand)
          .margin({ top: 20, bottom: 16 })

        Column() {
          Row() {
            Text('Dark Mode')
              .fontSize(16)
              .fontColor($r('app.color.text_primary'))
              .layoutWeight(1)

            Toggle({ type: ToggleType.Switch, isOn: this.isDarkMode })
              .onChange((isOn: boolean) => {
                this.isDarkMode = isOn;
                this.colorMode = isOn ? ThemeColorMode.DARK : ThemeColorMode.LIGHT;
              })
          }
          .width('100%')
          .padding(16)
          .backgroundColor($r('app.color.card_background'))
          .borderRadius(16)
        }
        .width('90%')
        .margin({ bottom: 12 })

        Text('Color Palette')
          .fontSize(14)
          .fontColor($r('app.color.text_secondary'))
          .width('90%')
          .margin({ bottom: 8 })

        Row({ space: 12 }) {
          Column()
            .width(48)
            .height(48)
            .backgroundColor('#0A59F7')
            .borderRadius(24)
            .border({
              width: this.selectedPalette === 'blue' ? 3 : 0,
              color: $r('sys.color.font_primary')
            })
            .onClick(() => {
              this.switchTheme('blue');
            })

          Column()
            .width(48)
            .height(48)
            .backgroundColor('#9C27B0')
            .borderRadius(24)
            .border({
              width: this.selectedPalette === 'purple' ? 3 : 0,
              color: $r('sys.color.font_primary')
            })
            .onClick(() => {
              this.switchTheme('purple');
            })

          Column()
            .width(48)
            .height(48)
            .backgroundColor('#4CAF50')
            .borderRadius(24)
            .border({
              width: this.selectedPalette === 'green' ? 3 : 0,
              color: $r('sys.color.font_primary')
            })
            .onClick(() => {
              this.switchTheme('green');
            })
        }
        .width('90%')
        .justifyContent(FlexAlign.Center)
        .margin({ bottom: 20 })

        Column({ space: 12 }) {
          Button('Primary Action')
            .width('80%')
            .backgroundColor($r('sys.color.background_emphasize'))
            .fontColor($r('sys.color.font_on_primary'))

          Row() {
            Text('Sample Text')
              .fontSize(16)
              .fontColor($r('sys.color.font_primary'))
              .layoutWeight(1)

            Text('99')
              .fontSize(18)
              .fontWeight(FontWeight.Bold)
              .fontColor($r('sys.color.font_emphasize'))
          }
          .width('80%')
          .padding(16)
          .backgroundColor($r('app.color.card_background'))
          .borderRadius(12)

          Row({ space: 16 }) {
            Column()
              .width(32)
              .height(32)
              .backgroundColor($r('sys.color.background_emphasize'))
              .borderRadius(16)

            Column()
              .width(32)
              .height(32)
              .backgroundColor($r('sys.color.background_emphasize'))
              .borderRadius(16)

            Column()
              .width(32)
              .height(32)
              .backgroundColor($r('sys.color.background_emphasize'))
              .borderRadius(16)
          }
        }
      }
      .width('100%')
      .height('100%')
      .backgroundColor($r('app.color.page_background'))
      .justifyContent(FlexAlign.Start)
    }
  }
}