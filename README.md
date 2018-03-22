# CQLabel
一个根据字和行数自动自适应高度的Label
`
C_Label *Tlabel = [[C_Label alloc]initWithFrame:CGRectMake(0, 200, 300, 100) withType:FitHeight];
Tlabel.font = [UIFont systemFontOfSize:10];
Tlabel.numberOfLines = 1;
Tlabel.text = @"这擅自这是才这 ==== Tlabel";
[Tlabel setContentMode:UIViewContentModeTop];
Tlabel.textColor = [UIColor blackColor];
[Tlabel setLabelSpace:3 margionX:1];
[self.view addSubview:Tlabel];




C_Label *Blabel = [[C_Label alloc]initWithFrame:CGRectMake(0, 300, 300, 100) withType:FitWidth];
Blabel.font = [UIFont systemFontOfSize:10];
Blabel.numberOfLines = 2;
Blabel.text = @"Blabel===这擅自这是才这是这擅自这是才这是这擅自这是才这是这擅自这是才这是这擅自这是才这是这擅自这是才这是这擅自这是才这是这擅自这是才这是";
[Blabel setContentMode:UIViewContentModeTop];
Blabel.textColor = [UIColor blackColor];
//        [Blabel setLabelSpace:10 margionX:1.5];
[self.view addSubview:Blabel];




C_Label *Clabel = [[C_Label alloc]initWithFrame:CGRectMake(0, 400, 300, 100) withType:FitWidth];
Clabel.font = [UIFont systemFontOfSize:10];
Clabel.numberOfLines = 0;
Clabel.text = @"这擅自这是才这是才能擅自这是才这这擅自这是才这是才能擅自这是才这这擅自这是才这是才能擅自这是才这这擅自这是才这是才能擅自这是才这 ====Clabel";
[Clabel setContentMode:UIViewContentModeTop];
Clabel.textColor = [UIColor blackColor];
[Clabel setLabelSpace:15 margionX:4];
[self.view addSubview:Clabel];



C_Label *Xlabel = [[C_Label alloc]initWithFrame:CGRectMake(0, 500, 300, 100) withType:FitHeight];
Xlabel.font = [UIFont systemFontOfSize:10];
Xlabel.numberOfLines = 0;
Xlabel.text = @"Xlabel===这擅自这是才这是才能擅自这是才这这擅自这是才这是才能这擅自这是才这是才能擅自这是才这这擅自这是才这是才能";
[Xlabel setContentMode:UIViewContentModeTop];
Xlabel.textColor = [UIColor blackColor];
[Xlabel setLabelSpace:3 margionX:1];
[self.view addSubview:Xlabel];

`
