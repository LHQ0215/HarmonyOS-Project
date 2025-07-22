@Entry
@Component
struct MainPage {
  @State message: string = 'Hello World';

  build() {

    Grid(){//栅格式布局
      GridItem(){
        Column({ space: 5 }){
          Image($r('app.media.icon_main_photo_a'))
            .width(72)
          Text('智能插座')
        }.onClick(()=>{
          this.getUIContext().getRouter().pushUrl({url:'pages/SwitchPage'});
        })
      }
      GridItem(){
        Column({ space: 5 }){
          Image($r('app.media.icon_main_net_a'))
            .width(72)
          Text('标准SOS')
        }.onClick(()=>{
          this.getUIContext().getRouter().pushUrl({url:'pages/PrefPage'});
        })
      }
      GridItem(){
        Column({ space: 5 }){
          Image($r('app.media.icon_main_cloud_a'))
            .width(72)
          Text('标准人体活动传感器')
        }.onClick(()=>{
          this.getUIContext().getRouter().pushUrl({url:'pages/DbPage'});
        })
      }
      GridItem(){
        Column({ space: 5 }){
          Image($r('app.media.icon_main_download_a'))
            .width(72)
          Text('标准水浸传感器')
        }.onClick(()=>{
          this.getUIContext().getRouter().pushUrl({url:'pages/NetPage'});
        })
      }

      GridItem(){
        Column({ space: 5 }){
          Image($r('app.media.icon_main_data_a'))
            .width(72)
          Text('标准温湿度传感器')
        }.onClick(()=>{
          this.getUIContext().getRouter().pushUrl({url:'pages/NetPage'});
        })
      }
      GridItem(){
        Column({ space: 5 }){
          Image($r('app.media.icon_main_scene_a'))
            .width(72)
          Text('标准门磁传感器')
        }.onClick(()=>{
          this.getUIContext().getRouter().pushUrl({url:'pages/NetPage'});
        })
      }
    }
    .height('100%')
    .width('100%')
    .padding({left:18,right:18})//内边距
    .columnsTemplate('1fr 1fr 1fr 1fr')
    .columnsGap(20) //列间距
    .rowsGap(10) //行间距

  }
}