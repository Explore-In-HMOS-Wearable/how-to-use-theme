import { AbilityStage, Configuration, ConfigurationConstant } from '@kit.AbilityKit';
import { hilog } from '@kit.PerformanceAnalysisKit';
import { AppStorage } from '@kit.ArkUI';

export default class EntryAbilityStage extends AbilityStage {
  onCreate(): void {
    AppStorage.setOrCreate('currentColorMode', this.context.config.colorMode);
    hilog.info(0x0000, 'ThemeLab', 'Stage onCreate colorMode=%{public}s', String(this.context.config.colorMode));
  }

  onConfigurationUpdate(newConfig: Configuration): void {
    AppStorage.setOrCreate('currentColorMode', newConfig.colorMode);
    hilog.info(0x0000, 'ThemeLab', 'Stage onConfigurationUpdate colorMode=%{public}s', String(newConfig.colorMode));
  }
}
