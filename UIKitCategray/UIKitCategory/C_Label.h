//
//  C_Label.h
//  UIKitCategray
//
//  Created by chenq@kensence.com on 2018/3/21.
//  Copyright © 2018年 chenq@kensence.com. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    FitWidth = 1,
    FitHeight = 2,
  
}origionFit;


typedef void(^LabelActionBlock)(UILabel *label);

/**
 定义协议,可以做一些点击label后的事件处理
 */
@protocol C_labelDelegate <NSObject>
@optional
- (void)ClickLabel:(UILabel *)label;

@end

@interface C_Label : UILabel

@property (nonatomic,assign)id<C_labelDelegate>delegate;

/**自适应后label的宽度*/
@property (nonatomic ,assign)CGFloat            labelH;

/**自适应后label的宽度*/
@property (nonatomic ,assign)CGFloat            labelW;

@property (nonatomic ,copy)LabelActionBlock     Block;

#warning paramar ==== 如果设置字体请务必在设置text之前设置,计算高度时会用的到 ====

/**
 默认初始化方法
 @param fit 自适应方方式 , FitWidth: 宽度自适应,FitHeight:高度自适应
 @return 返回当前对象
 */
- (instancetype)initWithFrame:(CGRect)frame withType:(origionFit)fit;

/**
 设置label的行间距和字间距 ,并一句自适应方式(origionFit)自适应宽度或者高度
 @param space 行间距
 @param X 字间距
 */
-(void)setLabelSpace:(CGFloat)space  margionX:(CGFloat)X;

/**
 指定段落设置不同的字体颜色

 @param FrontRange 指定位置
 @param Frontcolor 指定当前位置的字体颜色
 */
- (void)setFrontText:(NSRange)FrontRange FontTextColor:(UIColor *)Frontcolor;





@end
