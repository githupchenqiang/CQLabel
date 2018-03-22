//
//  C_Label.m
//  UIKitCategray
//
//  Created by chenq@kensence.com on 2018/3/21.
//  Copyright © 2018年 chenq@kensence.com. All rights reserved.
//

#import "C_Label.h"
#define UILABEL_LINE_SPACE 10

#define defaultSpace  3
#define defaultMargion 1.0

#import "UIView+Frame.h"




@interface C_Label ()
@property (nonatomic,assign)NSInteger type;
@end

@implementation C_Label

- (instancetype)initWithFrame:(CGRect)frame withType:(origionFit)fit{
    if (self = [super initWithFrame:frame]) {
        _type = fit;
        self.backgroundColor = [UIColor redColor];
        self.userInteractionEnabled = YES;
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(DoSomeThing)];
        tap.numberOfTapsRequired = 1;
        [self addGestureRecognizer:tap];
    }
    return self;
}


- (void)setdefaultProperty{
    
    if (self.numberOfLines >= 1) {
        self.height = [self singleLineHeightSpacing:defaultSpace lineNumber:self.numberOfLines marginX:defaultMargion];
    }
}

-(void)setNumberOfLines:(NSInteger)numberOfLines
{
    [super setNumberOfLines:numberOfLines];
    //根据设置行数来获取高度
    if (numberOfLines >= 1) {
        self.height = [self singleLineHeightSpacing:defaultSpace lineNumber:numberOfLines marginX:defaultMargion];
    }
}

- (void)DoSomeThing{
    
    if (_Block) {
        _Block(self);
    }
    
    if ([_delegate respondsToSelector:@selector(ClickLabel:)]) {
        [_delegate ClickLabel:self];
    }
}

-(void)setText:(NSString *)text
{
    [super setText:text];
    [self setFrame];
}

- (void)setFrame{
    if (_type == FitWidth) {
        self.height =  [self getLabelSpaceWithlineSpacing:defaultSpace margionX:defaultMargion];
    }else
    {
        CGFloat width = [self getLabelSpaceWithlineSpacing:defaultSpace margionX:defaultMargion];
        if (width > [UIScreen mainScreen].bounds.size.width) {
            //            self.lineBreakMode = NSLineBreakByTruncatingTail;
            self.width = [UIScreen mainScreen].bounds.size.width;
        }
    }
    [self setdefaultProperty];
}


/**
 获取label的高度
 @param space 行间距
 @param X 字间距
 @return 返回label的height
 */
-(CGFloat)getLabelSpaceWithlineSpacing:(CGFloat)space  margionX:(CGFloat)X{
    
    NSMutableParagraphStyle *paraStyle = [[NSMutableParagraphStyle alloc] init];
    if (self.numberOfLines >= 1 ) {
       paraStyle.lineBreakMode = NSLineBreakByTruncatingTail;
    }else
    {
       paraStyle.lineBreakMode = NSLineBreakByWordWrapping; 
    }
    paraStyle.alignment = NSTextAlignmentJustified;
    
//    if (self.numberOfLines > 0) {
        paraStyle.lineSpacing = space; //设置行间距
    paraStyle.paragraphSpacing = X; //设置字间距
    paraStyle.hyphenationFactor = 1.0;
    
    paraStyle.firstLineHeadIndent = 0.0;
    
    paraStyle.paragraphSpacingBefore = 0.0;
    
    paraStyle.headIndent = 0;
    
    paraStyle.tailIndent = 0;
    
    //设置字间距 NSKernAttributeName:@1.5f
    NSDictionary *dic = @{NSFontAttributeName:self.font, NSParagraphStyleAttributeName:paraStyle, NSKernAttributeName:[NSNumber numberWithFloat:X]
                          };
    NSAttributedString *attributeStr = [[NSAttributedString alloc] initWithString:self.text attributes:dic];
    self.attributedText = attributeStr;
    
    if (_type == FitWidth) {
        CGSize size = [self.text boundingRectWithSize:CGSizeMake(self.width, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:dic context:nil].size;
        
        return size.height;
    }else
    {
        CGSize size = [self.text boundingRectWithSize:CGSizeMake(MAXFLOAT,self.height) options:NSStringDrawingUsesLineFragmentOrigin attributes:dic context:nil].size;
        CGSize OneSize =[@"汉字" sizeWithAttributes:@{NSFontAttributeName:self.font}];
        self.height = OneSize.height - 1;
        return size.width;
    }
}


/**
 获取指定行高度

 @param space 行间距
 @param line 行数
 @param X 字间距
 @return 返回指定行高度
 */
- (CGFloat)singleLineHeightSpacing:(CGFloat)space lineNumber:(NSUInteger)line marginX:(CGFloat)X{
    NSMutableParagraphStyle *paraStyle = [[NSMutableParagraphStyle alloc] init];
    
    NSLog(@"%ld",self.numberOfLines);
    
    if (self.numberOfLines >= 1 ) {
        paraStyle.lineBreakMode = NSLineBreakByTruncatingTail;
    }else
    {
        paraStyle.lineBreakMode = NSLineBreakByWordWrapping;
    }
    
    paraStyle.alignment = NSTextAlignmentJustified;
    
    //    if (self.numberOfLines > 0) {
    paraStyle.lineSpacing = space; //设置行间距
    paraStyle.paragraphSpacing = X; //设置字间距
    paraStyle.hyphenationFactor = 1.0;
    
    paraStyle.firstLineHeadIndent = 0.0;
    
    paraStyle.paragraphSpacingBefore = 0.0;
    
    paraStyle.headIndent = 0;
    
    paraStyle.tailIndent = 0;
    
    //设置字间距 NSKernAttributeName:@1.5f
    NSDictionary *dic = @{NSFontAttributeName:self.font, NSParagraphStyleAttributeName:paraStyle, NSKernAttributeName:[NSNumber numberWithFloat:X]
                          };
    CGSize OneSize = [self.text boundingRectWithSize:CGSizeMake(self.width, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:dic context:nil].size;
    CGFloat height = 0;
    if (line > 0) {
        height = OneSize.height * line ;
    }
    
    return height;
}



/**
 外部设置行间距
 @param space 行间距
 @param X 字间距
 */
-(void)setLabelSpace:(CGFloat)space  margionX:(CGFloat)X{
    
    NSMutableParagraphStyle *paraStyle = [[NSMutableParagraphStyle alloc] init];
    
    NSLog(@"%ld",self.numberOfLines);
    
    if (self.numberOfLines >= 1 ) {
        paraStyle.lineBreakMode = NSLineBreakByTruncatingTail;
    }else
    {
        paraStyle.lineBreakMode = NSLineBreakByWordWrapping;
    }
    
    paraStyle.alignment = NSTextAlignmentJustified;
    paraStyle.lineSpacing = space; //设置行间距
    paraStyle.paragraphSpacing = X; //设置字间距
    paraStyle.hyphenationFactor = 1.0;
    
    paraStyle.firstLineHeadIndent = 0.0;
    
    paraStyle.paragraphSpacingBefore = 0.0;
    
    paraStyle.headIndent = 0;
    
    paraStyle.tailIndent = 0;
    
    //设置字间距 NSKernAttributeName:@1.5f
    NSDictionary *dic = @{NSFontAttributeName:self.font, NSParagraphStyleAttributeName:paraStyle, NSKernAttributeName:[NSNumber numberWithFloat:X]
                          };
    NSAttributedString *attributeStr = [[NSAttributedString alloc] initWithString:self.text attributes:dic];
    
    self.attributedText = attributeStr;
    
    if (_type == FitWidth) {
        CGSize size = [self.text boundingRectWithSize:CGSizeMake(self.width, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:dic context:nil].size;
        self.height = size.height;
    }else
    {
        CGSize size = [self.text boundingRectWithSize:CGSizeMake(MAXFLOAT,self.height) options:NSStringDrawingUsesLineFragmentOrigin attributes:dic context:nil].size;
        CGSize OneSize =[@"汉字" sizeWithAttributes:@{NSFontAttributeName:self.font}];
        self.height = OneSize.height - 1;
        self.height = size.width;
    }
    
    if (self.numberOfLines >= 1) {
        self.height = [self singleLineHeightSpacing:space lineNumber:self.numberOfLines marginX:X];
    }
}

/**
 设置同一label不同字体颜色
 
 @param FrontRange 指定部分字体
 @param Frontcolor 指定部分颜色
 */
- (void)setFrontText:(NSRange)FrontRange FontTextColor:(UIColor *)Frontcolor{
    
    NSMutableAttributedString *str = [[NSMutableAttributedString alloc] initWithString:self.text];
    if (FrontRange.location + FrontRange.length <= self.text.length)  {
    [str addAttribute:NSForegroundColorAttributeName value:Frontcolor range:FrontRange];
    }else
    {
        NSLog(@"超出字符串长度");
    }
    self.attributedText = str;
 
}



@end
