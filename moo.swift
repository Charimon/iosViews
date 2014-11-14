func moo(rect:CGRect){
  let ctx = UIGraphicsGetCurrentContext()
  let width = rect.width
  let height = rect.height
  var pstyleRightAlign = NSMutableParagraphStyle()
  pstyleRightAlign.alignment = NSTextAlignment.Right
  var pstyleLeftAlign = NSMutableParagraphStyle()
  pstyleLeftAlign.alignment = NSTextAlignment.Left
  var pstyleCenterAlign = NSMutableParagraphStyle()
  pstyleCenterAlign.alignment = NSTextAlignment.Center
  
  mooWithSign(rect)
}

func mooWithSign(rect:CGRect){
  let ctx = UIGraphicsGetCurrentContext()
  let width = rect.width
  let height = rect.height
  var pstyleRightAlign = NSMutableParagraphStyle()
  pstyleRightAlign.alignment = NSTextAlignment.Right
  var pstyleLeftAlign = NSMutableParagraphStyle()
  pstyleLeftAlign.alignment = NSTextAlignment.Left
  var pstyleCenterAlign = NSMutableParagraphStyle()
  pstyleCenterAlign.alignment = NSTextAlignment.Center
  
  outline(rect)
  
  body(rect)
  
  //sign
  CGContextSaveGState(ctx)
  CGContextMoveToPoint(ctx, 611.29*(width/1024), 267.75570408534463*(height/1024))
  CGContextAddCurveToPoint(ctx, 605.87*(width/1024), 266.7*(height/1024), 602.33*(width/1024), 261.45*(height/1024), 603.38*(width/1024), 256.0305932082729*(height/1024))
  CGContextAddCurveToPoint(ctx, 603.38*(width/1024), 256.03*(height/1024), 618.65*(width/1024), 177.5*(height/1024), 618.65*(width/1024), 177.5005438434377*(height/1024))
  CGContextAddCurveToPoint(ctx, 619.7*(width/1024), 172.08*(height/1024), 624.95*(width/1024), 168.54*(height/1024), 630.37*(width/1024), 169.59298574057823*(height/1024))
  CGContextAddCurveToPoint(ctx, 630.37*(width/1024), 169.59*(height/1024), 807.06*(width/1024), 203.94*(height/1024), 807.06*(width/1024), 203.93723204167492*(height/1024))
  CGContextAddCurveToPoint(ctx, 812.48*(width/1024), 204.99*(height/1024), 816.03*(width/1024), 210.24*(height/1024), 814.97*(width/1024), 215.66234291874667*(height/1024))
  CGContextAddCurveToPoint(ctx, 814.97*(width/1024), 215.66*(height/1024), 799.71*(width/1024), 294.19*(height/1024), 799.71*(width/1024), 294.19239228358185*(height/1024))
  CGContextAddCurveToPoint(ctx, 798.65*(width/1024), 299.62*(height/1024), 793.4*(width/1024), 303.15*(height/1024), 787.98*(width/1024), 302.09995038644126*(height/1024))
  CGContextAddCurveToPoint(ctx, 787.98*(width/1024), 302.1*(height/1024), 701.6*(width/1024), 285.31*(height/1024), 701.6*(width/1024), 285.30944522664595*(height/1024))
  CGContextAddCurveToPoint(ctx, 701.6*(width/1024), 285.31*(height/1024), 663.53*(width/1024), 481.13*(height/1024), 663.53*(width/1024), 481.13443929250855*(height/1024))
  CGContextAddCurveToPoint(ctx, 663.37*(width/1024), 481.96*(height/1024), 662.59*(width/1024), 482.49*(height/1024), 661.77*(width/1024), 482.33029560656144*(height/1024))
  CGContextAddCurveToPoint(ctx, 660.96*(width/1024), 482.17*(height/1024), 660.43*(width/1024), 481.38*(height/1024), 660.59*(width/1024), 480.56201230637885*(height/1024))
  CGContextAddCurveToPoint(ctx, 660.59*(width/1024), 480.56*(height/1024), 698.65*(width/1024), 284.74*(height/1024), 698.65*(width/1024), 284.73701824051636*(height/1024))
  CGContextAddCurveToPoint(ctx, 698.65*(width/1024), 284.74*(height/1024), 611.29*(width/1024), 267.76*(height/1024), 611.29*(width/1024), 267.76*(height/1024))
  CGContextSetStrokeColorWithColor(ctx, UIColor(hue: 0, saturation: 0, brightness: 0, alpha: 1).CGColor)
  CGContextSetLineWidth(ctx, 8*min(width/1024, height/1024))
  CGContextSetFillColorWithColor(ctx, UIColor(hue: 0, saturation: 0, brightness: 1, alpha: 1).CGColor)
  CGContextDrawPath(ctx, kCGPathFillStroke)
  CGContextRestoreGState(ctx)
}

func outline(rect:CGRect){
  let ctx = UIGraphicsGetCurrentContext()
  let width = rect.width
  let height = rect.height
  var pstyleRightAlign = NSMutableParagraphStyle()
  pstyleRightAlign.alignment = NSTextAlignment.Right
  var pstyleLeftAlign = NSMutableParagraphStyle()
  pstyleLeftAlign.alignment = NSTextAlignment.Left
  var pstyleCenterAlign = NSMutableParagraphStyle()
  pstyleCenterAlign.alignment = NSTextAlignment.Center
  
  //body
  CGContextSaveGState(ctx)
  CGContextMoveToPoint(ctx, 668.35*(width/1024), 456.3693035906143*(height/1024))
  CGContextAddCurveToPoint(ctx, 678.61*(width/1024), 459.85*(height/1024), 686*(width/1024), 469.56*(height/1024), 686*(width/1024), 481*(height/1024))
  CGContextAddCurveToPoint(ctx, 686*(width/1024), 495.36*(height/1024), 674.36*(width/1024), 507*(height/1024), 660*(width/1024), 507*(height/1024))
  CGContextAddCurveToPoint(ctx, 645.64*(width/1024), 507*(height/1024), 634*(width/1024), 495.36*(height/1024), 634*(width/1024), 481*(height/1024))
  CGContextAddCurveToPoint(ctx, 634*(width/1024), 466.64*(height/1024), 645.64*(width/1024), 455*(height/1024), 660*(width/1024), 455*(height/1024))
  CGContextAddCurveToPoint(ctx, 661.87*(width/1024), 455*(height/1024), 663.69*(width/1024), 455.2*(height/1024), 665.45*(width/1024), 455.5715642158334*(height/1024))
  CGContextAddCurveToPoint(ctx, 665.45*(width/1024), 455.57*(height/1024), 698.65*(width/1024), 284.74*(height/1024), 698.65*(width/1024), 284.73701824051636*(height/1024))
  CGContextAddCurveToPoint(ctx, 698.65*(width/1024), 284.74*(height/1024), 611.29*(width/1024), 267.76*(height/1024), 611.29*(width/1024), 267.75570408534463*(height/1024))
  CGContextAddCurveToPoint(ctx, 605.87*(width/1024), 266.7*(height/1024), 602.33*(width/1024), 261.45*(height/1024), 603.38*(width/1024), 256.0305932082729*(height/1024))
  CGContextAddCurveToPoint(ctx, 603.38*(width/1024), 256.03*(height/1024), 618.65*(width/1024), 177.5*(height/1024), 618.65*(width/1024), 177.5005438434377*(height/1024))
  CGContextAddCurveToPoint(ctx, 619.7*(width/1024), 172.08*(height/1024), 624.95*(width/1024), 168.54*(height/1024), 630.37*(width/1024), 169.59298574057823*(height/1024))
  CGContextAddCurveToPoint(ctx, 630.37*(width/1024), 169.59*(height/1024), 807.06*(width/1024), 203.94*(height/1024), 807.06*(width/1024), 203.93723204167492*(height/1024))
  CGContextAddCurveToPoint(ctx, 812.48*(width/1024), 204.99*(height/1024), 816.03*(width/1024), 210.24*(height/1024), 814.97*(width/1024), 215.66234291874667*(height/1024))
  CGContextAddCurveToPoint(ctx, 814.97*(width/1024), 215.66*(height/1024), 799.71*(width/1024), 294.19*(height/1024), 799.71*(width/1024), 294.19239228358185*(height/1024))
  CGContextAddCurveToPoint(ctx, 798.65*(width/1024), 299.62*(height/1024), 793.4*(width/1024), 303.15*(height/1024), 787.98*(width/1024), 302.09995038644126*(height/1024))
  CGContextAddCurveToPoint(ctx, 787.98*(width/1024), 302.1*(height/1024), 701.6*(width/1024), 285.31*(height/1024), 701.6*(width/1024), 285.30944522664595*(height/1024))
  CGContextAddCurveToPoint(ctx, 701.6*(width/1024), 285.31*(height/1024), 668.35*(width/1024), 456.37*(height/1024), 668.35*(width/1024), 456.3693035906146*(height/1024))
  CGContextAddCurveToPoint(ctx, 668.35*(width/1024), 456.37*(height/1024), 668.35*(width/1024), 456.37*(height/1024), 668.35*(width/1024), 456.37*(height/1024))
  CGContextSetStrokeColorWithColor(ctx, UIColor(hue: 0, saturation: 0, brightness: 1, alpha: 1).CGColor)
  CGContextSetLineWidth(ctx, 28*min(width/1024, height/1024))
  CGContextSetFillColorWithColor(ctx, UIColor(hue: 0, saturation: 0, brightness: 1, alpha: 1).CGColor)
  CGContextDrawPath(ctx, kCGPathFillStroke)
  CGContextRestoreGState(ctx)
  
  //Path
  CGContextSaveGState(ctx)
  CGContextMoveToPoint(ctx, 388*(width/1024), 550.5*(height/1024))
  CGContextAddCurveToPoint(ctx, 387.97*(width/1024), 551.34*(height/1024), 387.95*(width/1024), 552.18*(height/1024), 387.94*(width/1024), 553.0176031689429*(height/1024))
  CGContextAddCurveToPoint(ctx, 378.58*(width/1024), 556.95*(height/1024), 372*(width/1024), 566.21*(height/1024), 372*(width/1024), 577*(height/1024))
  CGContextAddCurveToPoint(ctx, 372*(width/1024), 590.87*(height/1024), 382.86*(width/1024), 602.2*(height/1024), 396.54*(width/1024), 602.9597316143552*(height/1024))
  CGContextAddCurveToPoint(ctx, 407.77*(width/1024), 634.45*(height/1024), 426*(width/1024), 654.5*(height/1024), 426*(width/1024), 654.5*(height/1024))
  CGContextAddCurveToPoint(ctx, 426*(width/1024), 654.5*(height/1024), 512*(width/1024), 654.5*(height/1024), 512*(width/1024), 654.5*(height/1024))
  CGContextAddCurveToPoint(ctx, 512*(width/1024), 654.5*(height/1024), 596.93*(width/1024), 654.5*(height/1024), 596.93*(width/1024), 654.5*(height/1024))
  CGContextAddCurveToPoint(ctx, 596.93*(width/1024), 654.5*(height/1024), 636.93*(width/1024), 610.5*(height/1024), 634.93*(width/1024), 550.5*(height/1024))
  CGContextAddCurveToPoint(ctx, 634.18*(width/1024), 528.01*(height/1024), 624.77*(width/1024), 505.24*(height/1024), 610.23*(width/1024), 485.5644343045612*(height/1024))
  CGContextAddCurveToPoint(ctx, 611.39*(width/1024), 480.32*(height/1024), 612*(width/1024), 474.79*(height/1024), 612*(width/1024), 469*(height/1024))
  CGContextAddCurveToPoint(ctx, 612*(width/1024), 463.33*(height/1024), 611.42*(width/1024), 457.92*(height/1024), 610.31*(width/1024), 452.77680878673846*(height/1024))
  CGContextAddCurveToPoint(ctx, 631.84*(width/1024), 452.92*(height/1024), 652*(width/1024), 440.46*(height/1024), 652*(width/1024), 425*(height/1024))
  CGContextAddCurveToPoint(ctx, 652*(width/1024), 409.54*(height/1024), 635.43*(width/1024), 397*(height/1024), 615*(width/1024), 397*(height/1024))
  CGContextAddCurveToPoint(ctx, 601.46*(width/1024), 397*(height/1024), 589.62*(width/1024), 402.5*(height/1024), 583.17*(width/1024), 410.71400700367093*(height/1024))
  CGContextAddCurveToPoint(ctx, 580.87*(width/1024), 408.93*(height/1024), 578.44*(width/1024), 407.25*(height/1024), 575.92*(width/1024), 405.67609413988635*(height/1024))
  CGContextAddCurveToPoint(ctx, 577.72*(width/1024), 385.75*(height/1024), 561*(width/1024), 370*(height/1024), 561*(width/1024), 370*(height/1024))
  CGContextAddCurveToPoint(ctx, 561*(width/1024), 370*(height/1024), 548.2*(width/1024), 381.9*(height/1024), 547.08*(width/1024), 393.41778588657724*(height/1024))
  CGContextAddCurveToPoint(ctx, 536.16*(width/1024), 390.51*(height/1024), 524.34*(width/1024), 389*(height/1024), 512*(width/1024), 389*(height/1024))
  CGContextAddCurveToPoint(ctx, 499.66*(width/1024), 389*(height/1024), 487.84*(width/1024), 390.51*(height/1024), 476.92*(width/1024), 393.41778588657724*(height/1024))
  CGContextAddCurveToPoint(ctx, 475.8*(width/1024), 381.9*(height/1024), 463*(width/1024), 370*(height/1024), 463*(width/1024), 370*(height/1024))
  CGContextAddCurveToPoint(ctx, 463*(width/1024), 370*(height/1024), 446.28*(width/1024), 385.75*(height/1024), 448.08*(width/1024), 405.67609413988635*(height/1024))
  CGContextAddCurveToPoint(ctx, 445.56*(width/1024), 407.25*(height/1024), 443.13*(width/1024), 408.93*(height/1024), 440.83*(width/1024), 410.71400700367093*(height/1024))
  CGContextAddCurveToPoint(ctx, 434.38*(width/1024), 402.5*(height/1024), 422.54*(width/1024), 397*(height/1024), 409*(width/1024), 397*(height/1024))
  CGContextAddCurveToPoint(ctx, 388.57*(width/1024), 397*(height/1024), 372*(width/1024), 409.54*(height/1024), 372*(width/1024), 425*(height/1024))
  CGContextAddCurveToPoint(ctx, 372*(width/1024), 440.46*(height/1024), 392.16*(width/1024), 452.92*(height/1024), 413.69*(width/1024), 452.77680878673846*(height/1024))
  CGContextAddCurveToPoint(ctx, 412.58*(width/1024), 457.92*(height/1024), 412*(width/1024), 463.33*(height/1024), 412*(width/1024), 469*(height/1024))
  CGContextAddCurveToPoint(ctx, 412*(width/1024), 474.25*(height/1024), 412.5*(width/1024), 479.28*(height/1024), 413.46*(width/1024), 484.0770565255093*(height/1024))
  CGContextAddCurveToPoint(ctx, 398.48*(width/1024), 504.09*(height/1024), 388.77*(width/1024), 527.44*(height/1024), 388*(width/1024), 550.5*(height/1024))
  CGContextSetStrokeColorWithColor(ctx, UIColor(hue: 0, saturation: 0, brightness: 1, alpha: 1).CGColor)
  CGContextSetLineWidth(ctx, 28*min(width/1024, height/1024))
  CGContextSetFillColorWithColor(ctx, UIColor(hue: 0, saturation: 0, brightness: 1, alpha: 1).CGColor)
  CGContextDrawPath(ctx, kCGPathFillStroke)
  CGContextRestoreGState(ctx)
}

func body(rect:CGRect){
  let ctx = UIGraphicsGetCurrentContext()
  let width = rect.width
  let height = rect.height
  var pstyleRightAlign = NSMutableParagraphStyle()
  pstyleRightAlign.alignment = NSTextAlignment.Right
  var pstyleLeftAlign = NSMutableParagraphStyle()
  pstyleLeftAlign.alignment = NSTextAlignment.Left
  var pstyleCenterAlign = NSMutableParagraphStyle()
  pstyleCenterAlign.alignment = NSTextAlignment.Center
  
  //body
  CGContextSaveGState(ctx)
  CGContextMoveToPoint(ctx, 388*(width/1024), 550.5*(height/1024))
  CGContextAddCurveToPoint(ctx, 386*(width/1024), 610.5*(height/1024), 426*(width/1024), 654.5*(height/1024), 426*(width/1024), 654.5*(height/1024))
  CGContextAddCurveToPoint(ctx, 426*(width/1024), 654.5*(height/1024), 512*(width/1024), 654.5*(height/1024), 512*(width/1024), 654.5*(height/1024))
  CGContextAddCurveToPoint(ctx, 512*(width/1024), 654.5*(height/1024), 596.93*(width/1024), 654.5*(height/1024), 596.93*(width/1024), 654.5*(height/1024))
  CGContextAddCurveToPoint(ctx, 596.93*(width/1024), 654.5*(height/1024), 636.93*(width/1024), 610.5*(height/1024), 634.93*(width/1024), 550.5*(height/1024))
  CGContextAddCurveToPoint(ctx, 632.93*(width/1024), 490.5*(height/1024), 569.31*(width/1024), 428.5*(height/1024), 510.93*(width/1024), 428.5*(height/1024))
  CGContextAddCurveToPoint(ctx, 452.55*(width/1024), 428.5*(height/1024), 390*(width/1024), 490.5*(height/1024), 388*(width/1024), 550.5*(height/1024))
  CGContextSetStrokeColorWithColor(ctx, UIColor(hue: 0, saturation: 0, brightness: 0, alpha: 1).CGColor)
  CGContextSetLineWidth(ctx, 10*min(width/1024, height/1024))
  CGContextSetFillColorWithColor(ctx, UIColor(hue: 0, saturation: 0, brightness: 1, alpha: 1).CGColor)
  CGContextDrawPath(ctx, kCGPathFillStroke)
  CGContextRestoreGState(ctx)
  
  //spot_2
  CGContextSaveGState(ctx)
  CGContextMoveToPoint(ctx, 397.06*(width/1024), 612.6305824084777*(height/1024))
  CGContextAddCurveToPoint(ctx, 397.06*(width/1024), 612.63*(height/1024), 436.15*(width/1024), 625.09*(height/1024), 436.15*(width/1024), 610.8923011584777*(height/1024))
  CGContextAddCurveToPoint(ctx, 436.15*(width/1024), 596.7*(height/1024), 416.66*(width/1024), 568.57*(height/1024), 441.32*(width/1024), 568.5680824084777*(height/1024))
  CGContextAddCurveToPoint(ctx, 465.98*(width/1024), 568.57*(height/1024), 415.15*(width/1024), 524.52*(height/1024), 396.51*(width/1024), 523.8906249864597*(height/1024))
  CGContextAddCurveToPoint(ctx, 377.86*(width/1024), 523.26*(height/1024), 389.81*(width/1024), 565.83*(height/1024), 389.81*(width/1024), 565.8298011584777*(height/1024))
  CGContextAddCurveToPoint(ctx, 389.81*(width/1024), 565.83*(height/1024), 397.06*(width/1024), 612.63*(height/1024), 397.06*(width/1024), 612.63*(height/1024))
  CGContextSetFillColorWithColor(ctx, UIColor(hue: 0, saturation: 0, brightness: 0, alpha: 1).CGColor)
  CGContextDrawPath(ctx, kCGPathFill)
  CGContextRestoreGState(ctx)
  
  //spot_1
  CGContextSaveGState(ctx)
  CGContextMoveToPoint(ctx, 526.17*(width/1024), 587.77734375*(height/1024))
  CGContextAddCurveToPoint(ctx, 535.89*(width/1024), 587.78*(height/1024), 548.74*(width/1024), 565.98*(height/1024), 560.46*(width/1024), 573.234375*(height/1024))
  CGContextAddCurveToPoint(ctx, 572.19*(width/1024), 580.48*(height/1024), 586.73*(width/1024), 580.83*(height/1024), 586.73*(width/1024), 594.72265625*(height/1024))
  CGContextAddCurveToPoint(ctx, 586.73*(width/1024), 608.61*(height/1024), 579.91*(width/1024), 626.02*(height/1024), 570.19*(width/1024), 631.8828125*(height/1024))
  CGContextAddCurveToPoint(ctx, 560.46*(width/1024), 637.74*(height/1024), 526.17*(width/1024), 645.73*(height/1024), 514.79*(width/1024), 633.96484375*(height/1024))
  CGContextAddCurveToPoint(ctx, 503.41*(width/1024), 622.2*(height/1024), 516.45*(width/1024), 587.78*(height/1024), 526.17*(width/1024), 587.78*(height/1024))
  CGContextSetFillColorWithColor(ctx, UIColor(hue: 0, saturation: 0, brightness: 0, alpha: 1).CGColor)
  CGContextDrawPath(ctx, kCGPathFill)
  CGContextRestoreGState(ctx)
  
  //armRight
  CGContextSaveGState(ctx)
  CGContextMoveToPoint(ctx, 398*(width/1024), 603*(height/1024))
  CGContextAddCurveToPoint(ctx, 412.36*(width/1024), 603*(height/1024), 424*(width/1024), 591.36*(height/1024), 424*(width/1024), 577*(height/1024))
  CGContextAddCurveToPoint(ctx, 424*(width/1024), 562.64*(height/1024), 412.36*(width/1024), 551*(height/1024), 398*(width/1024), 551*(height/1024))
  CGContextAddCurveToPoint(ctx, 383.64*(width/1024), 551*(height/1024), 372*(width/1024), 562.64*(height/1024), 372*(width/1024), 577*(height/1024))
  CGContextAddCurveToPoint(ctx, 372*(width/1024), 591.36*(height/1024), 383.64*(width/1024), 603*(height/1024), 398*(width/1024), 603*(height/1024))
  CGContextSetStrokeColorWithColor(ctx, UIColor(hue: 0, saturation: 0, brightness: 0, alpha: 1).CGColor)
  CGContextSetLineWidth(ctx, 8*min(width/1024, height/1024))
  CGContextSetFillColorWithColor(ctx, UIColor(hue: 0, saturation: 0, brightness: 1, alpha: 1).CGColor)
  CGContextDrawPath(ctx, kCGPathFillStroke)
  CGContextRestoreGState(ctx)
  
  //armLeft
  CGContextSaveGState(ctx)
  CGContextMoveToPoint(ctx, 660*(width/1024), 507*(height/1024))
  CGContextAddCurveToPoint(ctx, 674.36*(width/1024), 507*(height/1024), 686*(width/1024), 495.36*(height/1024), 686*(width/1024), 481*(height/1024))
  CGContextAddCurveToPoint(ctx, 686*(width/1024), 466.64*(height/1024), 674.36*(width/1024), 455*(height/1024), 660*(width/1024), 455*(height/1024))
  CGContextAddCurveToPoint(ctx, 645.64*(width/1024), 455*(height/1024), 634*(width/1024), 466.64*(height/1024), 634*(width/1024), 481*(height/1024))
  CGContextAddCurveToPoint(ctx, 634*(width/1024), 495.36*(height/1024), 645.64*(width/1024), 507*(height/1024), 660*(width/1024), 507*(height/1024))
  CGContextSetStrokeColorWithColor(ctx, UIColor(hue: 0, saturation: 0, brightness: 0, alpha: 1).CGColor)
  CGContextSetLineWidth(ctx, 8*min(width/1024, height/1024))
  CGContextSetFillColorWithColor(ctx, UIColor(hue: 0, saturation: 0, brightness: 1, alpha: 1).CGColor)
  CGContextDrawPath(ctx, kCGPathFillStroke)
  CGContextRestoreGState(ctx)
  
  face(rect)
}

func face(rect:CGRect){
  let ctx = UIGraphicsGetCurrentContext()
  let width = rect.width
  let height = rect.height
  var pstyleRightAlign = NSMutableParagraphStyle()
  pstyleRightAlign.alignment = NSTextAlignment.Right
  var pstyleLeftAlign = NSMutableParagraphStyle()
  pstyleLeftAlign.alignment = NSTextAlignment.Left
  var pstyleCenterAlign = NSMutableParagraphStyle()
  pstyleCenterAlign.alignment = NSTextAlignment.Center
  
  //head
  CGContextSaveGState(ctx)
  CGContextMoveToPoint(ctx, 412*(width/1024), 469*(height/1024))
  CGContextAddCurveToPoint(ctx, 412*(width/1024), 463.33*(height/1024), 412.58*(width/1024), 457.92*(height/1024), 413.69*(width/1024), 452.77680878673846*(height/1024))
  CGContextAddCurveToPoint(ctx, 392.16*(width/1024), 452.92*(height/1024), 372*(width/1024), 440.46*(height/1024), 372*(width/1024), 425*(height/1024))
  CGContextAddCurveToPoint(ctx, 372*(width/1024), 409.54*(height/1024), 388.57*(width/1024), 397*(height/1024), 409*(width/1024), 397*(height/1024))
  CGContextAddCurveToPoint(ctx, 422.54*(width/1024), 397*(height/1024), 434.38*(width/1024), 402.5*(height/1024), 440.83*(width/1024), 410.71400700367093*(height/1024))
  CGContextAddCurveToPoint(ctx, 443.13*(width/1024), 408.93*(height/1024), 445.56*(width/1024), 407.25*(height/1024), 448.08*(width/1024), 405.67609413988635*(height/1024))
  CGContextAddCurveToPoint(ctx, 446.28*(width/1024), 385.75*(height/1024), 463*(width/1024), 370*(height/1024), 463*(width/1024), 370*(height/1024))
  CGContextAddCurveToPoint(ctx, 463*(width/1024), 370*(height/1024), 475.8*(width/1024), 381.9*(height/1024), 476.92*(width/1024), 393.41778588657724*(height/1024))
  CGContextAddCurveToPoint(ctx, 487.84*(width/1024), 390.51*(height/1024), 499.66*(width/1024), 389*(height/1024), 512*(width/1024), 389*(height/1024))
  CGContextAddCurveToPoint(ctx, 524.34*(width/1024), 389*(height/1024), 536.16*(width/1024), 390.51*(height/1024), 547.08*(width/1024), 393.41778588657724*(height/1024))
  CGContextAddCurveToPoint(ctx, 548.2*(width/1024), 381.9*(height/1024), 561*(width/1024), 370*(height/1024), 561*(width/1024), 370*(height/1024))
  CGContextAddCurveToPoint(ctx, 561*(width/1024), 370*(height/1024), 577.72*(width/1024), 385.75*(height/1024), 575.92*(width/1024), 405.67609413988635*(height/1024))
  CGContextAddCurveToPoint(ctx, 578.44*(width/1024), 407.25*(height/1024), 580.87*(width/1024), 408.93*(height/1024), 583.17*(width/1024), 410.71400700367093*(height/1024))
  CGContextAddCurveToPoint(ctx, 589.62*(width/1024), 402.5*(height/1024), 601.46*(width/1024), 397*(height/1024), 615*(width/1024), 397*(height/1024))
  CGContextAddCurveToPoint(ctx, 635.43*(width/1024), 397*(height/1024), 652*(width/1024), 409.54*(height/1024), 652*(width/1024), 425*(height/1024))
  CGContextAddCurveToPoint(ctx, 652*(width/1024), 440.46*(height/1024), 631.84*(width/1024), 452.92*(height/1024), 610.31*(width/1024), 452.77680878673846*(height/1024))
  CGContextAddCurveToPoint(ctx, 611.42*(width/1024), 457.92*(height/1024), 612*(width/1024), 463.33*(height/1024), 612*(width/1024), 469*(height/1024))
  CGContextAddCurveToPoint(ctx, 612*(width/1024), 518.71*(height/1024), 567.23*(width/1024), 549*(height/1024), 512*(width/1024), 549*(height/1024))
  CGContextAddCurveToPoint(ctx, 456.77*(width/1024), 549*(height/1024), 412*(width/1024), 518.71*(height/1024), 412*(width/1024), 469*(height/1024))
  CGContextSetStrokeColorWithColor(ctx, UIColor(hue: 0, saturation: 0, brightness: 0, alpha: 1).CGColor)
  CGContextSetLineWidth(ctx, 10*min(width/1024, height/1024))
  CGContextSetFillColorWithColor(ctx, UIColor(hue: 0, saturation: 0, brightness: 1, alpha: 1).CGColor)
  CGContextDrawPath(ctx, kCGPathFillStroke)
  CGContextRestoreGState(ctx)
  
  mouth(rect)
  
  //rightEyeSocket
  CGContextSaveGState(ctx)
  CGContextMoveToPoint(ctx, 503*(width/1024), 468.8378378378378*(height/1024))
  CGContextAddCurveToPoint(ctx, 503*(width/1024), 446.84*(height/1024), 491.81*(width/1024), 429*(height/1024), 478*(width/1024), 429*(height/1024))
  CGContextAddCurveToPoint(ctx, 464.19*(width/1024), 429*(height/1024), 453*(width/1024), 446.84*(height/1024), 453*(width/1024), 468.8378378378378*(height/1024))
  CGContextAddCurveToPoint(ctx, 453*(width/1024), 479.34*(height/1024), 455.55*(width/1024), 488.88*(height/1024), 459.71*(width/1024), 496*(height/1024))
  CGContextAddCurveToPoint(ctx, 459.71*(width/1024), 496*(height/1024), 496.29*(width/1024), 496*(height/1024), 496.29*(width/1024), 496*(height/1024))
  CGContextAddCurveToPoint(ctx, 500.45*(width/1024), 488.88*(height/1024), 503*(width/1024), 479.34*(height/1024), 503*(width/1024), 468.84*(height/1024))
  CGContextSetStrokeColorWithColor(ctx, UIColor(hue: 0, saturation: 0, brightness: 0, alpha: 1).CGColor)
  CGContextSetLineWidth(ctx, 6*min(width/1024, height/1024))
  CGContextSetFillColorWithColor(ctx, UIColor(hue: 0, saturation: 0, brightness: 1, alpha: 1).CGColor)
  CGContextDrawPath(ctx, kCGPathFillStroke)
  CGContextRestoreGState(ctx)
  
  //rightEyeBall
  CGContextSaveGState(ctx)
  CGContextMoveToPoint(ctx, 495*(width/1024), 483.05882352941177*(height/1024))
  CGContextAddCurveToPoint(ctx, 495*(width/1024), 473.64*(height/1024), 487.39*(width/1024), 466*(height/1024), 478*(width/1024), 466*(height/1024))
  CGContextAddCurveToPoint(ctx, 468.61*(width/1024), 466*(height/1024), 461*(width/1024), 473.64*(height/1024), 461*(width/1024), 483.05882352941177*(height/1024))
  CGContextAddCurveToPoint(ctx, 461*(width/1024), 487.71*(height/1024), 462.85*(width/1024), 491.92*(height/1024), 465.86*(width/1024), 495*(height/1024))
  CGContextAddCurveToPoint(ctx, 465.86*(width/1024), 495*(height/1024), 490.14*(width/1024), 495*(height/1024), 490.14*(width/1024), 495*(height/1024))
  CGContextAddCurveToPoint(ctx, 493.15*(width/1024), 491.92*(height/1024), 495*(width/1024), 487.71*(height/1024), 495*(width/1024), 483.06*(height/1024))
  CGContextSetFillColorWithColor(ctx, UIColor(hue: 0, saturation: 0, brightness: 0, alpha: 1).CGColor)
  CGContextDrawPath(ctx, kCGPathFill)
  CGContextRestoreGState(ctx)
  
  //leftEyeSocket
  CGContextSaveGState(ctx)
  CGContextMoveToPoint(ctx, 571*(width/1024), 468.8378378378378*(height/1024))
  CGContextAddCurveToPoint(ctx, 571*(width/1024), 446.84*(height/1024), 559.81*(width/1024), 429*(height/1024), 546*(width/1024), 429*(height/1024))
  CGContextAddCurveToPoint(ctx, 532.19*(width/1024), 429*(height/1024), 521*(width/1024), 446.84*(height/1024), 521*(width/1024), 468.8378378378378*(height/1024))
  CGContextAddCurveToPoint(ctx, 521*(width/1024), 479.34*(height/1024), 523.55*(width/1024), 488.88*(height/1024), 527.71*(width/1024), 496*(height/1024))
  CGContextAddCurveToPoint(ctx, 527.71*(width/1024), 496*(height/1024), 564.29*(width/1024), 496*(height/1024), 564.29*(width/1024), 496*(height/1024))
  CGContextAddCurveToPoint(ctx, 568.45*(width/1024), 488.88*(height/1024), 571*(width/1024), 479.34*(height/1024), 571*(width/1024), 468.84*(height/1024))
  CGContextSetStrokeColorWithColor(ctx, UIColor(hue: 0, saturation: 0, brightness: 0, alpha: 1).CGColor)
  CGContextSetLineWidth(ctx, 6*min(width/1024, height/1024))
  CGContextSetFillColorWithColor(ctx, UIColor(hue: 0, saturation: 0, brightness: 1, alpha: 1).CGColor)
  CGContextDrawPath(ctx, kCGPathFillStroke)
  CGContextRestoreGState(ctx)
  
  //leftEyeBall
  CGContextSaveGState(ctx)
  CGContextMoveToPoint(ctx, 563*(width/1024), 483.05882352941177*(height/1024))
  CGContextAddCurveToPoint(ctx, 563*(width/1024), 473.64*(height/1024), 555.39*(width/1024), 466*(height/1024), 546*(width/1024), 466*(height/1024))
  CGContextAddCurveToPoint(ctx, 536.61*(width/1024), 466*(height/1024), 529*(width/1024), 473.64*(height/1024), 529*(width/1024), 483.05882352941177*(height/1024))
  CGContextAddCurveToPoint(ctx, 529*(width/1024), 487.71*(height/1024), 530.85*(width/1024), 491.92*(height/1024), 533.86*(width/1024), 495*(height/1024))
  CGContextAddCurveToPoint(ctx, 533.86*(width/1024), 495*(height/1024), 558.14*(width/1024), 495*(height/1024), 558.14*(width/1024), 495*(height/1024))
  CGContextAddCurveToPoint(ctx, 561.15*(width/1024), 491.92*(height/1024), 563*(width/1024), 487.71*(height/1024), 563*(width/1024), 483.06*(height/1024))
  CGContextSetFillColorWithColor(ctx, UIColor(hue: 0, saturation: 0, brightness: 0, alpha: 1).CGColor)
  CGContextDrawPath(ctx, kCGPathFill)
  CGContextRestoreGState(ctx)
}

func mouth(rect:CGRect){
  let ctx = UIGraphicsGetCurrentContext()
  let width = rect.width
  let height = rect.height
  var pstyleRightAlign = NSMutableParagraphStyle()
  pstyleRightAlign.alignment = NSTextAlignment.Right
  var pstyleLeftAlign = NSMutableParagraphStyle()
  pstyleLeftAlign.alignment = NSTextAlignment.Left
  var pstyleCenterAlign = NSMutableParagraphStyle()
  pstyleCenterAlign.alignment = NSTextAlignment.Center
  
  //Path
  CGContextSaveGState(ctx)
  CGContextMoveToPoint(ctx, 494*(width/1024), 513*(height/1024))
  CGContextAddCurveToPoint(ctx, 477.43*(width/1024), 513*(height/1024), 464*(width/1024), 523.97*(height/1024), 464*(width/1024), 537.5*(height/1024))
  CGContextAddCurveToPoint(ctx, 464*(width/1024), 551.03*(height/1024), 477.43*(width/1024), 562*(height/1024), 494*(width/1024), 562*(height/1024))
  CGContextAddCurveToPoint(ctx, 500.75*(width/1024), 562*(height/1024), 506.99*(width/1024), 560.18*(height/1024), 512*(width/1024), 557.1017943155871*(height/1024))
  CGContextAddCurveToPoint(ctx, 517.01*(width/1024), 560.18*(height/1024), 523.25*(width/1024), 562*(height/1024), 530*(width/1024), 562*(height/1024))
  CGContextAddCurveToPoint(ctx, 546.57*(width/1024), 562*(height/1024), 560*(width/1024), 551.03*(height/1024), 560*(width/1024), 537.5*(height/1024))
  CGContextAddCurveToPoint(ctx, 560*(width/1024), 523.97*(height/1024), 546.57*(width/1024), 513*(height/1024), 530*(width/1024), 513*(height/1024))
  CGContextAddCurveToPoint(ctx, 523.25*(width/1024), 513*(height/1024), 517.01*(width/1024), 514.82*(height/1024), 512*(width/1024), 517.8982056844128*(height/1024))
  CGContextAddCurveToPoint(ctx, 506.99*(width/1024), 514.82*(height/1024), 500.75*(width/1024), 513*(height/1024), 494*(width/1024), 513*(height/1024))
  CGContextSetStrokeColorWithColor(ctx, UIColor(hue: 0, saturation: 0, brightness: 0, alpha: 1).CGColor)
  CGContextSetLineWidth(ctx, 6*min(width/1024, height/1024))
  CGContextSetFillColorWithColor(ctx, UIColor(hue: 0.9387755102040817, saturation: 0.20851063829787234, brightness: 0.9215686274509803, alpha: 1).CGColor)
  CGContextDrawPath(ctx, kCGPathFillStroke)
  CGContextRestoreGState(ctx)
  
  //nostrilRight
  CGContextSaveGState(ctx)
  CGContextMoveToPoint(ctx, 499*(width/1024), 546*(height/1024))
  CGContextAddCurveToPoint(ctx, 503.97*(width/1024), 546*(height/1024), 508*(width/1024), 541.97*(height/1024), 508*(width/1024), 537*(height/1024))
  CGContextAddCurveToPoint(ctx, 508*(width/1024), 532.03*(height/1024), 503.97*(width/1024), 528*(height/1024), 499*(width/1024), 528*(height/1024))
  CGContextAddCurveToPoint(ctx, 494.03*(width/1024), 528*(height/1024), 490*(width/1024), 532.03*(height/1024), 490*(width/1024), 537*(height/1024))
  CGContextAddCurveToPoint(ctx, 490*(width/1024), 541.97*(height/1024), 494.03*(width/1024), 546*(height/1024), 499*(width/1024), 546*(height/1024))
  CGContextSetFillColorWithColor(ctx, UIColor(hue: 0, saturation: 0, brightness: 0, alpha: 1).CGColor)
  CGContextDrawPath(ctx, kCGPathFill)
  CGContextRestoreGState(ctx)
  
  //nostrilLeft
  CGContextSaveGState(ctx)
  CGContextMoveToPoint(ctx, 525*(width/1024), 546*(height/1024))
  CGContextAddCurveToPoint(ctx, 529.97*(width/1024), 546*(height/1024), 534*(width/1024), 541.97*(height/1024), 534*(width/1024), 537*(height/1024))
  CGContextAddCurveToPoint(ctx, 534*(width/1024), 532.03*(height/1024), 529.97*(width/1024), 528*(height/1024), 525*(width/1024), 528*(height/1024))
  CGContextAddCurveToPoint(ctx, 520.03*(width/1024), 528*(height/1024), 516*(width/1024), 532.03*(height/1024), 516*(width/1024), 537*(height/1024))
  CGContextAddCurveToPoint(ctx, 516*(width/1024), 541.97*(height/1024), 520.03*(width/1024), 546*(height/1024), 525*(width/1024), 546*(height/1024))
  CGContextSetFillColorWithColor(ctx, UIColor(hue: 0, saturation: 0, brightness: 0, alpha: 1).CGColor)
  CGContextDrawPath(ctx, kCGPathFill)
  CGContextRestoreGState(ctx)
}
