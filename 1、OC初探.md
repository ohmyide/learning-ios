## OC 简介
Objective-C(简称OC)，说起 OC 不得不先提 C 语言：

C语言是一门面向过程语言，OC 在 C 的基础上，增加一层面向对象语法，并且 OC 去除了比较复杂的面向对象语法，仅剩面向对象的最小精华，因此作为面向对象语言，OC 比 C++ 简单的多。

因为 OC 是基于 C 语言的，所以完全兼容 C 语言，我们在开发 iOS 程序过程中，可以在 OC 代码中混入 C 语言代码，甚至是 C++ 代码。


## 基本语法

没有包的概念，即缺失命名空间，用 NS 补偿，如：NSLog、NSArray、NSString。

关键词以 @ 开头，原因：为避免与 C、C++ 关键词冲突。

如：

```
@interface，@implementation，@end
@public、@protected、@private，@selector
@try、@catch、@throw、@finally 
@protocol，@class

// OC 2.0中引入的新关键字有
@property，@synthesize
@optional，@required，@dynamic
```

甚至字符串都是以@开头的，比如@"Hello"是OC中的字符串，而"Hello"则是C语言中的字符串。

## 第一个 OC 程序：hello world

```

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}

```

知识解析：
- Foundation：OC 基础框架，提供了 NSString 等基础
- @autoreleasepool：OC是不支持垃圾回收，用于自动释放内存空间
- main.m：程序中的唯一一个源文件，编译后为.o 目标文件 main.o
- @"Hello, World!" 是一个 OC 字符，不是 C 语言的字符，用 @ 区分

打印格式符：
```
int age = 20;
NSLog(@"My age is %i and height is %.2f", age, 1.83f);

```

知识点：
- %i表示接收整型数据
- %f表示接收浮点型数据，%.2f表示保留2位小数

知识点 import：
- 系统自带导入：#import <...>
- 自己创建的文件：#import "..." 


## 类

类的组成文件 .h 和 .m：
- .h：类的声明文件，用于声明成员变量、方法。类的声明使用关键字@interface和@end。
- .m：类的实现文件，用于实现.h中声明的方法。类的实现使用关键字@implementation和@end。

成员变量的常用作用域有3种：
1> @public 全局都可以访问（在.h中声明的所有方法作用域都是public类型，不能更改）
2> @protected 只能在类内部和子类中访问（默认）
3> @private 只能在类内部访问

方法：
+ 表示类方法(静态方法)
- 表示对象方法(动态方法)

```
#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        int age = 18;
        NSLog(@"My age is %i and height is %.2f", age, 1.83f);
//        等同于 Student *stu = [Student new];
        Student *stu = [[Student alloc] init];
//        OC是方法调用是用中括号[ ]，方法调用者写在括号左侧，方法名写在括号右侧，中间留点空格。因此上面是调用了Student类的静态方法alloc。
        
        stu -> no = 101;
        [stu setAge: 28];
        [stu setAge:18 andHeight:183.1];
        
        int no = stu->no;

        // 等价于 stu.age  点语法并不是直接访问stu对象的height，而是编译器遇到点语法展开成 [stu height]  OC点语法的本质是方法调用，不是直接访问成员变量。至于这个点语法代表的是get方法还是set方法，那就取决于你是取值还是设值，取值就是get方法(如第10行代码)，设值就是set方法(如第7行代码)。
        
        float h = [stu height];
        
        NSLog(@"result no is %i and height is %f", no, h);
//        oc  不支持垃圾回收，手动用 release 释放
        [stu release];
    }
    return 0;
}


```


NSString为类，它实例化后即是字符串对象。在OC中，NSString表示不可变字符串，可变字符串用NSMutableString表示。


## 点语法

