
应用内HSP开发
https://developer.huawei.com/consumer/cn/doc/harmonyos-guides-V2/in-app-hsp-0000001523312158-V2
开发及引用动态共享包
https://developer.huawei.com/consumer/cn/doc/harmonyos-guides-V2/hsp-0000001521396322-V2
HSP(OpenHarmony)
https://docs.openharmony.cn/pages/v4.1/zh-cn/application-dev/quick-start/in-app-hsp.md


hsp开发：
1.应用内HSP指的是专门为某一应用开发的HSP，只能被该应用内部其他HAP/HSP使用，用于应用内部代码、资源的共享。
2.应用内HSP跟随其宿主应用的APP包一起发布，与该宿主应用具有相同的包名和生命周期。
3.在HSP中，通过$r/$rawfile可以使用本模块resources目录下的资源。
    在HSP模块中使用Image("common1/miki.png")，实际上该Image组件访问的是HSP调用方（如entry）下的资源entry/src/main/ets/common1/miki.png
4.运行时需要配置 entry 的 Edit Configurations，选择Deploy Multi Hap，勾选Deploy Multi Hap Packages，选择 HSP模块



hsp使用：
1.HSP模块和使用方在同一工程下，可以直接引用本地源码方式
2.引入.tgz包（在api10、11下通过hsp模块在release下编译生成）
在使用方entry/feature模块 或 工程下 的oh-package.json5中配置对它的依赖



存在的问题：
2.只能引入har,不能引入hsp，引入时hsp报错缺少文件。（har中不包含资源，hsp中包含）（api9下无法引用hsp包，见 hsp使用 第2条）








