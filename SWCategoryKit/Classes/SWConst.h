





#import <UIKit/UIKit.h>
#import <objc/message.h>



#define KScreenHeight [[UIScreen mainScreen]bounds].size.height
#define KScreenWidth [[UIScreen mainScreen]bounds].size.width



// 弱引用
#define SWWeakSelf __weak typeof(self) weakSelf = self;

// 日志输出
#ifdef DEBUG
#define SWLog(...) NSLog(__VA_ARGS__)
#else
#define SWLog(...)
#endif

// 过期提醒
#define SWDeprecated(instead) NS_DEPRECATED(2_0, 2_0, 2_0, 2_0, instead)

// 运行时objc_msgSend
#define SWMsgSend(...) ((void (*)(void *, SEL, UIView *))objc_msgSend)(__VA_ARGS__)
#define SWMsgTarget(target) (__bridge void *)(target)

// RGB颜色
#define SWColor(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]

// 文字颜色
#define SWRefreshLabelTextColor SWColor(90, 90, 90)

// 字体大小
#define SWLabelFont [UIFont boldSystemFontOfSize:14]

