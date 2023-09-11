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


## 类

成员变量的常用作用域有3种：
1> @public 全局都可以访问
2> @protected 只能在类内部和子类中访问
3> @private 只能在类内部访问

方法：
+ 表示类方法(静态方法)
- 表示对象方法(动态方法)