# CQLabel
一个根据字和行数自动自适应高度的Label
<font color=#FF1493 size=22>自动计算高度,宽度,自适应高度的建议label,初始化后默认行间距为3,字间距为1,根据传入的origionFit决定是以宽度适配还是以高度适配,进行自适应</font>

```
C_Label *Blabel = [[C_Label alloc]initWithFrame:CGRectMake(0, 300, 300, 100) withType:FitWidth];
Blabel.font = [UIFont systemFontOfSize:10];
Blabel.numberOfLines = 2;
Blabel.text = @"Blabel===这擅自这是才这是这擅自这是才这是这擅自这是才这是这擅自这是才这是这擅自这是才这是这擅自这是才这是这擅自这是才这是这擅自这是才这是";
[Blabel setContentMode:UIViewContentModeTop];
Blabel.textColor = [UIColor blackColor];
//        [Blabel setLabelSpace:10 margionX:1.5];
[self.view addSubview:Blabel];




**以宽度来适配自适应高度**
C_Label *Clabel = [[C_Label alloc]initWithFrame:CGRectMake(0, 400, 300, 100) withType:FitWidth];
Clabel.font = [UIFont systemFontOfSize:10];
Clabel.numberOfLines = 0;
Clabel.text = @"这擅自这是才这是才能擅自这是才这这擅自这是才这是才能擅自这是才这这擅自这是才这是才能擅自这是才这这擅自这是才这是才能擅自这是才这 ====Clabel";
[Clabel setContentMode:UIViewContentModeTop];
Clabel.textColor = [UIColor blackColor];
[Clabel setLabelSpace:15 margionX:4]; **这个地方设置后默认的将不再有效**
[self.view addSubview:Clabel];


C_Label *Tlabel = [[C_Label alloc]initWithFrame:CGRectMake(0, 200, 300, 100) withType:FitHeight];
Tlabel.font = [UIFont systemFontOfSize:10];
Tlabel.numberOfLines = 1;
Tlabel.text = @"这擅自这是才这 ==== Tlabel";
[Tlabel setContentMode:UIViewContentModeTop];
Tlabel.textColor = [UIColor blackColor];
[Tlabel setLabelSpace:3 margionX:1];
[self.view addSubview:Tlabel];




C_Label *Xlabel = [[C_Label alloc]initWithFrame:CGRectMake(0, 500, 300, 100) withType:FitHeight];
Xlabel.font = [UIFont systemFontOfSize:10];
Xlabel.numberOfLines = 0;
Xlabel.text = @"Xlabel===这擅自这是才这是才能擅自这是才这这擅自这是才这是才能这擅自这是才这是才能擅自这是才这这擅自这是才这是才能";
[Xlabel setContentMode:UIViewContentModeTop];
Xlabel.textColor = [UIColor blackColor];
[Xlabel setLabelSpace:3 margionX:1];
[self.view addSubview:Xlabel];

**上面 Tlabel和Xlabel 在设置numberOfLines不同字体上下顶的间隙不同,在这种情况下也仅在行间距很小的情况下会有有差异,numberOfLines为0时上下间隙会非常的小,不为1的时候间隙会大一点,存在label的安全距离**


```
![这是一个效果图](/label.gif)    




