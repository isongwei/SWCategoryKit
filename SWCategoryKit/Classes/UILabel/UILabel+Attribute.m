//
//  UILabel+Attribute.m
//  SWFrame
//
//  Created by iSongWei on 2017/6/14.
//  Copyright © 2017年 iSong. All rights reserved.
//

#import "UILabel+Attribute.h"

@implementation UILabel (Attribute)

-(void)labelTextArray:(NSArray<NSString *> *)texts textColorArray:(NSArray<UIColor *> *)colors{
    if (!texts.count) {
        return;
    }
    if (texts.count != colors.count) {
        return;
    }
    NSMutableAttributedString *aString = self.attributedText? self.attributedText.mutableCopy: [[NSMutableAttributedString alloc] initWithString:self.text];
    for (int i = 0; i < texts.count; i ++) {
        [aString addAttribute:NSForegroundColorAttributeName value:colors[i] range:[self.text rangeOfString:texts[i]]];
    }
    self.attributedText = aString;
}



-(void)labelTextArray:(NSArray<NSString *> *)texts textSizeArray:(NSArray<NSValue *> *)size{
    
    if (!texts.count) {
        return;
    }
    if (texts.count != size.count) {
        return;
    }
    
    NSMutableAttributedString *aString = self.attributedText? self.attributedText.mutableCopy: [[NSMutableAttributedString alloc] initWithString:self.text];
    for (int i = 0; i < texts.count; i ++) {
        [aString addAttribute:NSForegroundColorAttributeName value:size[i] range:[self.text rangeOfString:texts[i]]];
    }
    self.attributedText = aString;
    
    
}




-(void )lineSpace:(CGFloat)lineSpace{
    NSMutableAttributedString *attributedString = self.attributedText? self.attributedText.mutableCopy: [[NSMutableAttributedString alloc] initWithString:self.text];
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    paragraphStyle.lineSpacing = lineSpace;
    NSRange range = NSMakeRange(0, [self.text length]);
    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:range];
    self.attributedText = attributedString;
}
/*
 NSFontAttributeName; //字体，value是UIFont对象
 NSParagraphStyleAttributeName;//绘图的风格（居中，换行模式，间距等诸多风格），value是NSParagraphStyle对象
 NSForegroundColorAttributeName;// 文字颜色，value是UIFont对象
 NSBackgroundColorAttributeName;// 背景色，value是UIFont
 NSLigatureAttributeName; //  字符连体，value是NSNumber
 NSKernAttributeName; // 字符间隔
 NSStrikethroughStyleAttributeName;//删除线，value是NSNumber
 NSUnderlineStyleAttributeName;//下划线，value是NSNumber
 NSStrokeColorAttributeName; //描绘边颜色，value是UIColor
 NSStrokeWidthAttributeName; //描边宽度，value是NSNumber
 NSShadowAttributeName; //阴影，value是NSShadow对象
 NSTextEffectAttributeName; //文字效果，value是NSString
 NSAttachmentAttributeName;//附属，value是NSTextAttachment 对象
 NSLinkAttributeName;//链接，value是NSURL or NSString
 NSBaselineOffsetAttributeName;//基础偏移量，value是NSNumber对象
 NSUnderlineColorAttributeName;//下划线颜色，value是UIColor对象
 NSStrikethroughColorAttributeName;//删除线颜色，value是UIColor
 NSObliquenessAttributeName; //字体倾斜
 NSExpansionAttributeName; //字体扁平化
 NSVerticalGlyphFormAttributeName;//垂直或者水平，value是 NSNumber，0表示水平，1垂直
 */


-(void)setAttributed:(NSAttributedString *)attributed{
    
        NSMutableAttributedString *attributedString = self.attributedText? self.attributedText.mutableCopy: [[NSMutableAttributedString alloc] initWithString:self.text];
    
    
    NSDictionary * secondAttributes = @{NSFontAttributeName:[UIFont systemFontOfSize:10],NSForegroundColorAttributeName:[UIColor blueColor],};
    
    
    
    
}



@end
