import {
  LynxTemplateResourceFetcher,
  LynxView,
  ModuleClassWrapper,
} from '@lynx/lynx';

// import { ExampleGenericResourceFetcher } from '../provider/ExampleGenericResourceFetcher';
// import { ExampleMediaResourceFetcher } from '../provider/ExampleMediaResourceFetcher';
import { ExampleTemplateResourceFetcher } from '../provider/ExampleTemplateResourceFetcher';

@Entry
@Component
struct Index {
  templateResourceFetcher: LynxTemplateResourceFetcher = new ExampleTemplateResourceFetcher();
  modules: Map<string, ModuleClassWrapper> = new Map();
  // private url: string = 'playground/main.lynx.bundle';
  private url: string = 'https://voffline.byted.org/download/tos/schedule/inspirecloud-cn-bytedance-internal/baas/ttkfzg/bd94bcbdd09c2898_1751256965484.js';

  build() {
    Column() {
      LynxView({
        templateResourceFetcher: this.templateResourceFetcher,
        url: this.url,
      }).width('100%').height('100%');
    }
    .size({ width: '100%', height: '100%' })
  }
}