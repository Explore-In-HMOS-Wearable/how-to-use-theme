import { CustomColors, CustomTheme } from '@kit.ArkUI';

export class BlueThemeColors implements CustomColors {
  brand: ResourceColor = '#0A59F7';
  fontEmphasize: ResourceColor = '#0A59F7';
  backgroundEmphasize: ResourceColor = '#0A59F7';
  iconEmphasize: ResourceColor = '#0A59F7';
  interactiveFocus: ResourceColor = '#0A59F7';
  interactiveActive: ResourceColor = '#0A59F7';
}

export class PurpleThemeColors implements CustomColors {
  brand: ResourceColor = '#9C27B0';
  fontEmphasize: ResourceColor = '#9C27B0';
  backgroundEmphasize: ResourceColor = '#9C27B0';
  iconEmphasize: ResourceColor = '#9C27B0';
  interactiveFocus: ResourceColor = '#9C27B0';
  interactiveActive: ResourceColor = '#9C27B0';
}

export class GreenThemeColors implements CustomColors {
  brand: ResourceColor = '#4CAF50';
  fontEmphasize: ResourceColor = '#4CAF50';
  backgroundEmphasize: ResourceColor = '#4CAF50';
  iconEmphasize: ResourceColor = '#4CAF50';
  interactiveFocus: ResourceColor = '#4CAF50';
  interactiveActive: ResourceColor = '#4CAF50';
}

export class AppTheme implements CustomTheme {
  public colors: CustomColors;

  constructor(colors: CustomColors) {
    this.colors = colors;
  }
}

interface GeneratedObjectLiteralInterface_1 {
  blue: AppTheme;
  purple: AppTheme;
  green: AppTheme;
}

export const THEME_PRESETS: GeneratedObjectLiteralInterface_1 = {
  blue: new AppTheme(new BlueThemeColors()),
  purple: new AppTheme(new PurpleThemeColors()),
  green: new AppTheme(new GreenThemeColors())
}