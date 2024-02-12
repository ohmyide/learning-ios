

在实际的开发中，关于框架经常会遇到以下几个概念：

- Application Kit框架：包含了用于开发交互式图形应用程序，使得开发文本、菜单、工具栏、表、文档、剪切板和窗口之类的过程变得十分简便，用于Mac OS桌面程序的开发。
- Cocoa：总体来说，通常指的是- Foundation框架、Application Kit框架以及CoreData框架，Cocoa一般针对的是MacOS的应用开发。
- Cocoa Touch：指的是Foundation框架、UIKit框架以及CoreData框架，CocoaTouch一般用于iOS移动设备开发，从名称上来看包含了关键字Touch，顾名思义与触控有关。

Cocoa Touch和Cocoa大部分是一样的，只是Cocoa Touch多了一些移动设备特有的东西，如：触摸屏、加速度传感器、GPS定位。Cocoa中多任务、多窗口的特性，在Cocoa Touch中也是没有的（或者跟Cocoa不完全一样的）。 


Xcode 使用：https://juejin.cn/post/7038802172791750669


## typedef

使用typedef定义对于希望使用别名的数据类型，可以在程序的头部来统一定义。typedef可以定义任意的数据类型，可以是系统自带的数据类型，如int、float等，也可以是自定义的类，同时也可以支持枚举或者结构体。如下所示，分别为int型、MYPerson自定义类（注意定义时需要带*号）以及CGRect结构体定义了别名。 如：

typedef Int Integer;
typedef MYPerson *Person;
typedef CGRect MYRect;

## UIView

UIView是所有界面UI类控件的父类。UIView类的对象负责屏幕上一个矩形区域的显示和行为动作。例如UIButton、UIImageview等都继承自UIView，因此，UIView所具备的属性和方法，其子类也都同样具备。
