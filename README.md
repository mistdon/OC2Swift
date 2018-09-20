# OC2Swift
OC bridge to Swift Code Demo and tips

项目中 OC2Swift 为项目示例名称, Xcode: 9.4.1

[Language Interoperability](https://developer.apple.com/documentation/swift/objective-c_and_c_code_customization)


### Swift使用OC类

- 桥接头文件
  不管是Swift项目插入OC类还是OC插入Swift类中，都会自动生成 "OC2Swift-Bridging-Header.h"文件
  默认在Tagets -> OC2Swift -> BuildSettings -> Swift Complier Gengeal -> Objective-C Bridging Header 中添加

  在 OC2Swift-Bridging-Header.h 导入 OC 头文件, 即可在Swift中使用OC类

- 将OC的类或者属性为Swift起一个特殊的名字

  ```objective-c
  NS_SWIFT_NAME(Sandwich.Preferences)
  @interface SandwichPreferences: NSObject
  @property (nonatomic, assign) BOOL includesCrust NS_SWIFT_NAME(isCrusty);
  @end
  
  @interface Sandwich : NSObject
  @property (nonatomic, strong) SandwichPreferences *preferences;
  @end
  ```

  执行

  ```swift
  let sandWich = Sandwich()
  sandWich.preferences = Sandwich.Preferences()
  sandWich.preferences.isCrusty = true
  ```


### OC使用Swift类

在OC的.m文件中引入 `#import "OC2Swift-Swift.h"` 

其中"OC2Swift-Swift.h"是系统生成的，不要尝试自己去创建，如果找不到，确保Target->Build Settings中下面两项都为YES

```
Defines Module : YES
Install Objective-C Compatibility Header : YES
```

  1. `@objcMembers` `@objc` `@nonobjc`

     `@objc `为继承自NSObject的类，提供供OC类调用, 可以描述Class，Protocol

     `@objcMembers` 为后续所有继承自NSObject的类和其中的属性启用`@objc`，相当于每一个属性和方法添加了`@objc`，但是只能描述Class

     `@nonobjc`指定特定属性和方法，不提供给OC类调用
2. ```swift
   // 声明类和属性
   @objcMembers
   class FaceView: UIView {
   var name: String?
   override init(frame: CGRect) { super.init(frame: frame) }
   required init?(coder aDecoder: NSCoder) {super.init(coder: aDecoder)}
   func changeBackgroundColor() {self.backgroundColor = UIColor.green}
   @nonobjc func anotherFunc(cornerRadius: CGFloat){self.layer.cornerRadius = cornerRadius }
   }
   class CryView: UIView {
   var name: String?
   override init(frame: CGRect) { super.init(frame: frame)}
   required init?(coder aDecoder: NSCoder) { super.init(coder: aDecoder)}
   func cry() {print("Cry")}
   }
   // 声明协议
   @objc(FaceViewProtocol)
   protocol FaceViewProtocol {
   func configureFaceView()
   }
   //  声明枚举
   @objc
   enum FaceViewType: Int {
   case smile  = 0
   case laugh  = 1
   }
   注意这里的枚举类型必须支持NSInteger类型的，因为OC的枚举只支持NSInteger，
   ```

#### 

 