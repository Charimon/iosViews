iosViews
========

Sketch plugin to generate ios view code

###export_as_cgContext.sketchplugin
exports your views as CGContext as swift code
so you'll have something like

    CGContextMoveToPoint(...)
    CGContextAddCurveToPoint(...)
    ...

####Why?
It's very annoying to draw in ios in code. But it's annoying to draw in sketch and export it as a picture because you can no longer use the CGRect dimensions from ios. You're stuck with whatever dimensions you picked in sketch.

This will generate a bunch of swift functions, with 1 main function which takes in a CGRect so you can put it in drawRect. All your shapes will be relative to how you depict them in sketch and the CGRect. Also you can edit the code and add your own transformations or animations, instead of having to create a ton of assets and load them dynamically.

For instance, if in sketch you offset your creation 20px from the left, and your arboard is 200px in width. Then at runtime of the ios application your creation will be offset 20*(width/200) where width is the width of the ios CGRect at runtime. This of course works with y offset, width, and height.

When you run the plugin it puts the generated code into your artboard, so if you have a very complex shape (or groups of shapes) pasting the code might be slow or even crash sketch. If it is complex and hasn't crashed, it might take minutes (spinning beachball) but it will work.

Once I figure out how to make sketch save it to a file and NOT crash sketch, I'll do that and it should work much better.

####How does it work?
1. create an artboard (let's say iphone sized)
1. create some shape you want that you'd have to do in code otherwise
1. select the artboard (make sure it's only the artboard, this is very important)
1. SAVE, because sketch might might crash if you have weirdly intercepting paths in your shape (flatten them, and try to simplify them)
1. run the export_as_cgContext plugin
  - anything hidden will be ignored
  - you will get code where everything is relative to the selection (artboard in this case)
  - for each group in the selection, the plugin will generate a swift function named after the group (make sure these are unique)
  - NOTE: for complex shapes the export might be slow (take minutes)

####Unfortunatelly this doesn't work with:
1. boolean operations (union, subtract, intersect, difference)
1. radius on object (set the radius on individual path instead of object... click enter > highlight points > set radius)
1. opacity on object (set your opacity on the color directly, and it will work)
1. transformation on the object (flatten them all, if you have a rotated group, ungroup it then flatten it, that way your rotation will be preserved)
1. any color that isn't a solid (gradients, fills don't work)
1. more than 1 border or fill (only the last valid border and last valid fill are set, valid = center borders with solid color)
1. inside, outside borders don't work and are ignored (only center border works)
1. blending (will always be treated as "normal")
1. shadows, inner shadows, blurs, reflections are ignored
1. character spacing, line height, paragraph spacing are ignored
1. justified alignment is ignored
1. text decoration and list types are ignored
1. text weight is ignored
1. typeface might be iffy (I've only tested Helvetica Neue, and that's what ios defaults to if it can't find your typeface)
1. even/odd setting on fill is ignored (it uses whatever ios uses, I don't know if it's even/odd or non zero by default)
1. all border settings (ends, joints, start arrow, end arrow, dash, gap) are ignored

####TODO:
- fix a lot of the things that don't work
- settle on a good shortcut
- add this to sketch toolbox
- make it export to a file, rather than cliboard (which is currently makes the pasting teeeerribly slow)

####Example
#####Sketch File
![moo png](https://github.com/Charimon/iosViews/blob/master/moo.png?raw=true "moo.png")

#####Generated Code
```swift
func mooCharacter(rect:CGRect){
    let ctx = UIGraphicsGetCurrentContext()
    let width = rect.width
    let height = rect.height
    var pstyleRightAlign = NSMutableParagraphStyle()
    pstyleRightAlign.alignment = NSTextAlignment.Right
    var pstyleLeftAlign = NSMutableParagraphStyle()
    pstyleLeftAlign.alignment = NSTextAlignment.Left
    var pstyleCenterAlign = NSMutableParagraphStyle()
    pstyleCenterAlign.alignment = NSTextAlignment.Center
    
    //signOutline
    CGContextSaveGState(ctx)
    CGContextMoveToPoint(ctx, 701.1646408974227*(width/1024), 304.41210454708494*(height/1024))
    CGContextAddCurveToPoint(ctx, 701.1646408974227*(width/1024), 304.41210454708494*(height/1024), 665.7105808309632*(width/1024), 486.80743164444164*(height/1024), 665.7105808309632*(width/1024), 486.80743164444164*(height/1024))
    CGContextAddCurveToPoint(ctx, 665.078097732375*(width/1024), 490.06127510931685*(height/1024), 667.2089244827171*(width/1024), 493.2128915680838*(height/1024), 670.4551319756478*(width/1024), 493.8438903840849*(height/1024))
    CGContextAddCurveToPoint(ctx, 673.7079583160914*(width/1024), 494.47617577371165*(height/1024), 676.8580577727232*(width/1024), 492.3487511457879*(height/1024), 677.4901070323351*(width/1024), 489.0971395889602*(height/1024))
    CGContextAddCurveToPoint(ctx, 677.4901070323351*(width/1024), 489.0971395889602*(height/1024), 712.9441670987947*(width/1024), 306.70181249160345*(height/1024), 712.9441670987947*(width/1024), 306.70181249160345*(height/1024))
    CGContextAddCurveToPoint(ctx, 712.9441670987947*(width/1024), 306.70181249160345*(height/1024), 795.6868596598813*(width/1024), 322.7853626505146*(height/1024), 795.6868596598813*(width/1024), 322.7853626505146*(height/1024))
    CGContextAddCurveToPoint(ctx, 802.190795859518*(width/1024), 324.049599779612*(height/1024), 808.4885516536424*(width/1024), 319.79989024586723*(height/1024), 809.7546183233745*(width/1024), 313.28654187561085*(height/1024))
    CGContextAddCurveToPoint(ctx, 809.7546183233745*(width/1024), 313.28654187561085*(height/1024), 827.1149719389618*(width/1024), 223.97526496387604*(height/1024), 827.1149719389618*(width/1024), 223.97526496387604*(height/1024))
    CGContextAddCurveToPoint(ctx, 828.3804443130394*(width/1024), 217.4649739797159*(height/1024), 824.1276421302414*(width/1024), 211.16127081937216*(height/1024), 817.6298941281839*(width/1024), 209.89823655403328*(height/1024))
    CGContextAddCurveToPoint(ctx, 817.6298941281839*(width/1024), 209.89823655403328*(height/1024), 641.9124123625793*(width/1024), 175.74221812753365*(height/1024), 641.9124123625793*(width/1024), 175.74221812753365*(height/1024))
    CGContextAddCurveToPoint(ctx, 635.4084761629427*(width/1024), 174.47798099843627*(height/1024), 629.1107203688182*(width/1024), 178.72769053218101*(height/1024), 627.844653699086*(width/1024), 185.24103890243742*(height/1024))
    CGContextAddCurveToPoint(ctx, 627.844653699086*(width/1024), 185.24103890243742*(height/1024), 610.4843000834987*(width/1024), 274.55231581417223*(height/1024), 610.4843000834987*(width/1024), 274.55231581417223*(height/1024))
    CGContextAddCurveToPoint(ctx, 609.2188277094211*(width/1024), 281.06260679833235*(height/1024), 613.4716298922193*(width/1024), 287.3663099586761*(height/1024), 619.9693778942767*(width/1024), 288.629344224015*(height/1024))
    CGContextAddCurveToPoint(ctx, 619.9693778942767*(width/1024), 288.629344224015*(height/1024), 701.1646408974227*(width/1024), 304.4121045470849*(height/1024), 701.1646408974227*(width/1024), 304.4121045470849*(height/1024))
    CGContextAddCurveToPoint(ctx, 701.1646408974227*(width/1024), 304.4121045470849*(height/1024), 701.1646408974227*(width/1024), 304.41210454708494*(height/1024), 701.1646408974227*(width/1024), 304.41210454708494*(height/1024))
    CGContextSetStrokeColorWithColor(ctx, UIColor(hue: 0, saturation: 0, brightness: 1, alpha: 1).CGColor)
    CGContextSetLineWidth(ctx, 14)
    CGContextSetFillColorWithColor(ctx, UIColor(hue: 0, saturation: 0, brightness: 1, alpha: 1).CGColor)
    CGContextDrawPath(ctx, kCGPathFillStroke)
    CGContextRestoreGState(ctx)
    
    mooCharacter(rect)
    
    //Rectangle_9
    CGContextSaveGState(ctx)
    CGContextMoveToPoint(ctx, 708.8080712631094*(width/1024), 296.5333866933708*(height/1024))
    CGContextAddCurveToPoint(ctx, 705.5552449226657*(width/1024), 295.90110130374404*(height/1024), 702.4051454660339*(width/1024), 298.02852593166784*(height/1024), 701.773096206422*(width/1024), 301.28013748849554*(height/1024))
    CGContextAddCurveToPoint(ctx, 701.773096206422*(width/1024), 301.28013748849554*(height/1024), 665.7109120477392*(width/1024), 486.803991826708*(height/1024), 665.7109120477392*(width/1024), 486.803991826708*(height/1024))
    CGContextAddCurveToPoint(ctx, 665.078428949151*(width/1024), 490.05783529158316*(height/1024), 667.209255699493*(width/1024), 493.2094517503502*(height/1024), 670.4554631924238*(width/1024), 493.84045056635125*(height/1024))
    CGContextAddCurveToPoint(ctx, 670.4554631924238*(width/1024), 493.84045056635125*(height/1024), 670.4554631924238*(width/1024), 493.84045056635125*(height/1024), 670.4554631924238*(width/1024), 493.84045056635125*(height/1024))
    CGContextAddCurveToPoint(ctx, 673.7082895328674*(width/1024), 494.472735955978*(height/1024), 676.8583889894992*(width/1024), 492.3453113280542*(height/1024), 677.4904382491112*(width/1024), 489.0936997712265*(height/1024))
    CGContextAddCurveToPoint(ctx, 677.4904382491112*(width/1024), 489.0936997712265*(height/1024), 713.5526224077939*(width/1024), 303.56984543301405*(height/1024), 713.5526224077939*(width/1024), 303.56984543301405*(height/1024))
    CGContextAddCurveToPoint(ctx, 714.1851055063821*(width/1024), 300.3160019681389*(height/1024), 712.05427875604*(width/1024), 297.16438550937187*(height/1024), 708.8080712631094*(width/1024), 296.5333866933708*(height/1024))
    CGContextAddCurveToPoint(ctx, 708.8080712631094*(width/1024), 296.5333866933708*(height/1024), 708.8080712631094*(width/1024), 296.5333866933708*(height/1024), 708.8080712631094*(width/1024), 296.5333866933708*(height/1024))
    CGContextAddCurveToPoint(ctx, 708.8080712631094*(width/1024), 296.5333866933708*(height/1024), 708.8080712631094*(width/1024), 296.5333866933708*(height/1024), 708.8080712631094*(width/1024), 296.5333866933708*(height/1024))
    CGContextSetFillColorWithColor(ctx, UIColor(hue: 0, saturation: 0, brightness: 0.10196078431372549, alpha: 1).CGColor)
    CGContextDrawPath(ctx, kCGPathFill)
    CGContextRestoreGState(ctx)
    
    //Rectangle_8
    CGContextSaveGState(ctx)
    CGContextMoveToPoint(ctx, 641.9304399074972*(width/1024), 175.74221812753387*(height/1024))
    CGContextAddCurveToPoint(ctx, 635.4265037078607*(width/1024), 174.4779809984365*(height/1024), 629.1287479137361*(width/1024), 178.72769053218124*(height/1024), 627.862681244004*(width/1024), 185.24103890243765*(height/1024))
    CGContextAddCurveToPoint(ctx, 627.862681244004*(width/1024), 185.24103890243765*(height/1024), 610.5023276284167*(width/1024), 274.55231581417246*(height/1024), 610.5023276284167*(width/1024), 274.55231581417246*(height/1024))
    CGContextAddCurveToPoint(ctx, 609.236855254339*(width/1024), 281.0626067983326*(height/1024), 613.4896574371372*(width/1024), 287.3663099586763*(height/1024), 619.9874054391946*(width/1024), 288.6293442240152*(height/1024))
    CGContextAddCurveToPoint(ctx, 619.9874054391946*(width/1024), 288.6293442240152*(height/1024), 795.7048872047992*(width/1024), 322.7853626505148*(height/1024), 795.7048872047992*(width/1024), 322.7853626505148*(height/1024))
    CGContextAddCurveToPoint(ctx, 802.2088234044359*(width/1024), 324.0495997796121*(height/1024), 808.5065791985603*(width/1024), 319.79989024586746*(height/1024), 809.7726458682924*(width/1024), 313.286541875611*(height/1024))
    CGContextAddCurveToPoint(ctx, 809.7726458682924*(width/1024), 313.286541875611*(height/1024), 827.1329994838798*(width/1024), 223.97526496387624*(height/1024), 827.1329994838798*(width/1024), 223.97526496387624*(height/1024))
    CGContextAddCurveToPoint(ctx, 828.3984718579574*(width/1024), 217.4649739797161*(height/1024), 824.1456696751593*(width/1024), 211.1612708193724*(height/1024), 817.6479216731018*(width/1024), 209.89823655403347*(height/1024))
    CGContextAddCurveToPoint(ctx, 817.6479216731018*(width/1024), 209.89823655403347*(height/1024), 641.9304399074972*(width/1024), 175.74221812753387*(height/1024), 641.9304399074972*(width/1024), 175.74221812753387*(height/1024))
    CGContextAddCurveToPoint(ctx, 641.9304399074972*(width/1024), 175.74221812753387*(height/1024), 641.9304399074972*(width/1024), 175.74221812753387*(height/1024), 641.9304399074972*(width/1024), 175.74221812753387*(height/1024))
    CGContextSetFillColorWithColor(ctx, UIColor(hue: 0, saturation: 0, brightness: 0, alpha: 1).CGColor)
    CGContextDrawPath(ctx, kCGPathFill)
    CGContextRestoreGState(ctx)
    
    //Rectangle_10
    CGContextSaveGState(ctx)
    CGContextMoveToPoint(ctx, 643.5431349420359*(width/1024), 183.18671115157872*(height/1024))
    CGContextAddCurveToPoint(ctx, 639.2058296446985*(width/1024), 182.34362440705763*(height/1024), 635.0066916794686*(width/1024), 185.1741927757099*(height/1024), 634.1614218167298*(width/1024), 189.52272924264165*(height/1024))
    CGContextAddCurveToPoint(ctx, 634.1614218167298*(width/1024), 189.52272924264165*(height/1024), 617.9463676239584*(width/1024), 272.9419514092399*(height/1024), 617.9463676239584*(width/1024), 272.9419514092399*(height/1024))
    CGContextAddCurveToPoint(ctx, 617.1022958351907*(width/1024), 277.28432431991195*(height/1024), 619.9380960509927*(width/1024), 281.4887425852065*(height/1024), 624.2714264090048*(width/1024), 282.33105667979277*(height/1024))
    CGContextAddCurveToPoint(ctx, 624.2714264090048*(width/1024), 282.33105667979277*(height/1024), 794.0921921702608*(width/1024), 315.3408696264698*(height/1024), 794.0921921702608*(width/1024), 315.3408696264698*(height/1024))
    CGContextAddCurveToPoint(ctx, 798.4294974675981*(width/1024), 316.1839563709909*(height/1024), 802.628635432828*(width/1024), 313.35338800233853*(height/1024), 803.4739052955669*(width/1024), 309.0048515354069*(height/1024))
    CGContextAddCurveToPoint(ctx, 803.4739052955669*(width/1024), 309.0048515354069*(height/1024), 819.6889594883382*(width/1024), 225.5856293688086*(height/1024), 819.6889594883382*(width/1024), 225.5856293688086*(height/1024))
    CGContextAddCurveToPoint(ctx, 820.5330312771059*(width/1024), 221.24325645813656*(height/1024), 817.6972310613039*(width/1024), 217.03883819284198*(height/1024), 813.3639007032918*(width/1024), 216.19652409825574*(height/1024))
    CGContextAddCurveToPoint(ctx, 813.3639007032918*(width/1024), 216.19652409825574*(height/1024), 643.5431349420359*(width/1024), 183.18671115157872*(height/1024), 643.5431349420359*(width/1024), 183.18671115157872*(height/1024))
    CGContextAddCurveToPoint(ctx, 643.5431349420359*(width/1024), 183.18671115157872*(height/1024), 643.5431349420359*(width/1024), 183.18671115157872*(height/1024), 643.5431349420359*(width/1024), 183.18671115157872*(height/1024))
    CGContextSetFillColorWithColor(ctx, UIColor(hue: 0, saturation: 0, brightness: 1, alpha: 1).CGColor)
    CGContextDrawPath(ctx, kCGPathFill)
    CGContextRestoreGState(ctx)
}

func mooCharacter(rect:CGRect){
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
    
    face(rect)
    
    left_arm_2(rect)
    
    right_arm(rect)
    
    eyes(rect)
    
    mouthNose(rect)
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
    
    //Oval_17
    CGContextSaveGState(ctx)
    CGContextMoveToPoint(ctx, 632.8625317496947*(width/1024), 542.1820650865434*(height/1024))
    CGContextAddCurveToPoint(ctx, 637.5214300502586*(width/1024), 561.5322017278675*(height/1024), 639.6363770248577*(width/1024), 580.9197831299614*(height/1024), 639.6363770248577*(width/1024), 599.9939772355826*(height/1024))
    CGContextAddCurveToPoint(ctx, 639.6363770248577*(width/1024), 614.8270978726543*(height/1024), 638.3674141863337*(width/1024), 628.6426996909047*(height/1024), 636.2459498249327*(width/1024), 641.1036609020985*(height/1024))
    CGContextAddCurveToPoint(ctx, 635.4969612168034*(width/1024), 645.5030362408214*(height/1024), 630.1485851189852*(width/1024), 665.97287214308*(height/1024), 630.1485851189852*(width/1024), 665.97287214308*(height/1024))
    CGContextAddCurveToPoint(ctx, 630.1485851189852*(width/1024), 665.97287214308*(height/1024), 512.0000000000002*(width/1024), 665.97287214308*(height/1024), 512.0000000000002*(width/1024), 665.97287214308*(height/1024))
    CGContextAddCurveToPoint(ctx, 512.0000000000002*(width/1024), 665.97287214308*(height/1024), 393.851414881015*(width/1024), 665.97287214308*(height/1024), 393.851414881015*(width/1024), 665.97287214308*(height/1024))
    CGContextAddCurveToPoint(ctx, 393.851414881015*(width/1024), 665.97287214308*(height/1024), 388.503038783197*(width/1024), 645.5030362408221*(height/1024), 387.75405017506745*(width/1024), 641.1036609020985*(height/1024))
    CGContextAddCurveToPoint(ctx, 385.6325858136664*(width/1024), 628.642699690904*(height/1024), 384.36362297514256*(width/1024), 614.8270978726543*(height/1024), 384.36362297514256*(width/1024), 599.9939772355826*(height/1024))
    CGContextAddCurveToPoint(ctx, 384.36362297514256*(width/1024), 580.9197831299621*(height/1024), 386.47856994974165*(width/1024), 561.5322017278673*(height/1024), 391.1374682503056*(width/1024), 542.1820650865434*(height/1024))
    CGContextAddCurveToPoint(ctx, 398.59978345997547*(width/1024), 511.18829581919044*(height/1024), 410.6906250325248*(width/1024), 484.6305605301895*(height/1024), 427.2356684698186*(width/1024), 464.58819624866874*(height/1024))
    CGContextAddCurveToPoint(ctx, 427.106587483804*(width/1024), 462.7367425420401*(height/1024), 428.3757839835597*(width/1024), 442.88223596784303*(height/1024), 428.3757839835597*(width/1024), 442.88223596784303*(height/1024))
    CGContextAddCurveToPoint(ctx, 428.3757839835597*(width/1024), 442.88223596784303*(height/1024), 421.00784940438234*(width/1024), 443.00000000000006*(height/1024), 420.7491190979563*(width/1024), 443.00000000000006*(height/1024))
    CGContextAddCurveToPoint(ctx, 401.80975604983865*(width/1024), 443.00000000000006*(height/1024), 387.01464944662916*(width/1024), 431.8295174947312*(height/1024), 387.01464944662916*(width/1024), 419.00000000000006*(height/1024))
    CGContextAddCurveToPoint(ctx, 387.01464944662916*(width/1024), 406.17048250526886*(height/1024), 401.80975604983865*(width/1024), 395.00000000000006*(height/1024), 420.7491190979563*(width/1024), 395.00000000000006*(height/1024))
    CGContextAddCurveToPoint(ctx, 430.63289638671836*(width/1024), 395.00000000000006*(height/1024), 439.76826248469393*(width/1024), 398.0834416089172*(height/1024), 446.142512308522*(width/1024), 403.29168546571924*(height/1024))
    CGContextAddCurveToPoint(ctx, 446.142512308522*(width/1024), 403.29168546571924*(height/1024), 462.7981156000833*(width/1024), 393.4636173804497*(height/1024), 462.7981156000833*(width/1024), 393.4636173804497*(height/1024))
    CGContextAddCurveToPoint(ctx, 462.7981156000833*(width/1024), 393.4636173804497*(height/1024), 462.3377574334402*(width/1024), 390.5951832161205*(height/1024), 462.3377574334402*(width/1024), 390.5951832161205*(height/1024))
    CGContextAddCurveToPoint(ctx, 461.847424835128*(width/1024), 387.5399821166402*(height/1024), 465.8926591897259*(width/1024), 359.87604685118555*(height/1024), 465.8926591897259*(width/1024), 359.87604685118555*(height/1024))
    CGContextAddCurveToPoint(ctx, 465.8926591897259*(width/1024), 359.87604685118555*(height/1024), 486.9030151349624*(width/1024), 379.59630994264484*(height/1024), 486.9030151349624*(width/1024), 379.59630994264484*(height/1024))
    CGContextAddCurveToPoint(ctx, 496.17774499998234*(width/1024), 376.56591853056887*(height/1024), 505.97388828727026*(width/1024), 375.00000000000006*(height/1024), 516.0042611924766*(width/1024), 375.00000000000006*(height/1024))
    CGContextAddCurveToPoint(ctx, 525.9594485764316*(width/1024), 375.00000000000006*(height/1024), 535.6841048682937*(width/1024), 376.54251837652515*(height/1024), 544.8977002683547*(width/1024), 379.528685429582*(height/1024))
    CGContextAddCurveToPoint(ctx, 544.8977002683547*(width/1024), 379.528685429582*(height/1024), 565.8543057472311*(width/1024), 359.8760468511855*(height/1024), 565.8543057472311*(width/1024), 359.8760468511855*(height/1024))
    CGContextAddCurveToPoint(ctx, 565.8543057472311*(width/1024), 359.8760468511855*(height/1024), 569.9093445286247*(width/1024), 387.3922911048786*(height/1024), 569.4435468891535*(width/1024), 390.37818244848296*(height/1024))
    CGContextAddCurveToPoint(ctx, 569.4435468891535*(width/1024), 390.37818244848296*(height/1024), 568.9981383565134*(width/1024), 393.23337399365056*(height/1024), 568.9981383565134*(width/1024), 393.23337399365056*(height/1024))
    CGContextAddCurveToPoint(ctx, 568.9981383565134*(width/1024), 393.23337399365056*(height/1024), 585.8660100764313*(width/1024), 403.2916854657192*(height/1024), 585.8660100764313*(width/1024), 403.2916854657192*(height/1024))
    CGContextAddCurveToPoint(ctx, 592.2402599002594*(width/1024), 398.0834416089172*(height/1024), 601.3756259982349*(width/1024), 395.00000000000006*(height/1024), 611.259403286997*(width/1024), 395.00000000000006*(height/1024))
    CGContextAddCurveToPoint(ctx, 630.1987663351146*(width/1024), 395.00000000000006*(height/1024), 644.9938729383241*(width/1024), 406.17048250526886*(height/1024), 644.9938729383241*(width/1024), 419.00000000000006*(height/1024))
    CGContextAddCurveToPoint(ctx, 644.9938729383241*(width/1024), 431.8295174947312*(height/1024), 630.1987663351146*(width/1024), 443.00000000000006*(height/1024), 611.259403286997*(width/1024), 443.00000000000006*(height/1024))
    CGContextAddCurveToPoint(ctx, 611.0006729808135*(width/1024), 443.00000000000006*(height/1024), 603.6327384015638*(width/1024), 442.8822359684233*(height/1024), 603.6327384015638*(width/1024), 442.8822359684233*(height/1024))
    CGContextAddCurveToPoint(ctx, 603.6327384015638*(width/1024), 442.8822359684233*(height/1024), 604.5102762276738*(width/1024), 468.8484386481444*(height/1024), 603.6213610847408*(width/1024), 473.62721797679836*(height/1024))
    CGContextAddCurveToPoint(ctx, 616.6891605321184*(width/1024), 492.3559401518985*(height/1024), 626.4726999281777*(width/1024), 515.6427180382365*(height/1024), 632.8625317496947*(width/1024), 542.1820650865434*(height/1024))
    CGContextSetStrokeColorWithColor(ctx, UIColor(hue: 0, saturation: 0, brightness: 1, alpha: 1).CGColor)
    CGContextSetLineWidth(ctx, 14)
    CGContextSetFillColorWithColor(ctx, UIColor(hue: 0, saturation: 0, brightness: 1, alpha: 1).CGColor)
    CGContextDrawPath(ctx, kCGPathFillStroke)
    CGContextRestoreGState(ctx)
    
    //Path
    CGContextSaveGState(ctx)
    CGContextMoveToPoint(ctx, 581.3001439042804*(width/1024), 392.2278059833904*(height/1024))
    CGContextAddCurveToPoint(ctx, 581.8812057646674*(width/1024), 388.50303919196205*(height/1024), 582.1280802281974*(width/1024), 384.70822941376366*(height/1024), 581.9811237765232*(width/1024), 380.8755779639627*(height/1024))
    CGContextAddCurveToPoint(ctx, 581.8938187740887*(width/1024), 378.59864734714614*(height/1024), 581.6629795851687*(width/1024), 376.20143506769534*(height/1024), 581.3025786549557*(width/1024), 373.6955831159642*(height/1024))
    CGContextAddCurveToPoint(ctx, 580.6479772514373*(width/1024), 369.1441681025696*(height/1024), 579.5861501717229*(width/1024), 364.34938908428023*(height/1024), 578.2300148148281*(width/1024), 359.4625888603667*(height/1024))
    CGContextAddCurveToPoint(ctx, 577.4160116705968*(width/1024), 356.52934865888477*(height/1024), 571.8410677983517*(width/1024), 340.9727840437745*(height/1024), 571.8410677983517*(width/1024), 340.9727840437745*(height/1024))
    CGContextAddCurveToPoint(ctx, 571.8410677983517*(width/1024), 340.9727840437745*(height/1024), 554.6727099430967*(width/1024), 353.6193696340326*(height/1024), 551.6314576959123*(width/1024), 356.8726881485984*(height/1024))
    CGContextAddCurveToPoint(ctx, 548.609686941943*(width/1024), 360.1051667270402*(height/1024), 545.9460979655718*(width/1024), 363.513221163895*(height/1024), 543.7416837732567*(width/1024), 367.09340849311735*(height/1024))
    CGContextAddCurveToPoint(ctx, 542.9487643252074*(width/1024), 368.38118833544286*(height/1024), 542.2048715396403*(width/1024), 369.6490950185705*(height/1024), 541.5085509623781*(width/1024), 370.8965246308015*(height/1024))
    CGContextAddCurveToPoint(ctx, 541.5085509623781*(width/1024), 370.8965246308015*(height/1024), 546.7475927634155*(width/1024), 373.82098030784346*(height/1024), 546.7475927634155*(width/1024), 373.82098030784346*(height/1024))
    CGContextAddCurveToPoint(ctx, 546.7475927634155*(width/1024), 373.82098030784346*(height/1024), 548.5974852584762*(width/1024), 368.1132751861051*(height/1024), 548.5974852584762*(width/1024), 368.1132751861051*(height/1024))
    CGContextAddCurveToPoint(ctx, 538.191125300689*(width/1024), 364.74052786012766*(height/1024), 527.2181375789587*(width/1024), 362.99999999999983*(height/1024), 516.0042611924766*(width/1024), 362.99999999999983*(height/1024))
    CGContextAddCurveToPoint(ctx, 504.70557611464517*(width/1024), 362.99999999999983*(height/1024), 493.6517074507959*(width/1024), 364.7669665773116*(height/1024), 483.1760731330279*(width/1024), 368.1897371306991*(height/1024))
    CGContextAddCurveToPoint(ctx, 483.1760731330279*(width/1024), 368.1897371306991*(height/1024), 485.03954413399515*(width/1024), 373.8930235366719*(height/1024), 485.03954413399515*(width/1024), 373.8930235366719*(height/1024))
    CGContextAddCurveToPoint(ctx, 485.03954413399515*(width/1024), 373.8930235366719*(height/1024), 490.2812398969648*(width/1024), 370.97332740034767*(height/1024), 490.2812398969648*(width/1024), 370.97332740034767*(height/1024))
    CGContextAddCurveToPoint(ctx, 489.57263769595716*(width/1024), 369.70118229303915*(height/1024), 488.8145009232867*(width/1024), 368.40766165839216*(height/1024), 488.0052811637005*(width/1024), 367.0934084931174*(height/1024))
    CGContextAddCurveToPoint(ctx, 485.8008669713855*(width/1024), 363.5132211638953*(height/1024), 483.13727799501385*(width/1024), 360.10516672704*(height/1024), 480.11550724104484*(width/1024), 356.87268814859846*(height/1024))
    CGContextAddCurveToPoint(ctx, 477.0742549938602*(width/1024), 353.61936963403247*(height/1024), 459.9058971386054*(width/1024), 340.9727840437745*(height/1024), 459.9058971386054*(width/1024), 340.9727840437745*(height/1024))
    CGContextAddCurveToPoint(ctx, 459.9058971386054*(width/1024), 340.9727840437745*(height/1024), 454.33095326636027*(width/1024), 356.52934865888443*(height/1024), 453.51695012212906*(width/1024), 359.46258886036674*(height/1024))
    CGContextAddCurveToPoint(ctx, 452.1608147652343*(width/1024), 364.34938908428*(height/1024), 451.0989876855197*(width/1024), 369.14416810257*(height/1024), 450.44438628200135*(width/1024), 373.6955831159642*(height/1024))
    CGContextAddCurveToPoint(ctx, 450.08398535178844*(width/1024), 376.20143506769523*(height/1024), 449.85314616286837*(width/1024), 378.5986473471464*(height/1024), 449.7658411604338*(width/1024), 380.8755779639627*(height/1024))
    CGContextAddCurveToPoint(ctx, 449.61529935096314*(width/1024), 384.8017362084669*(height/1024), 449.8779553946917*(width/1024), 388.68703868663835*(height/1024), 450.4893789762011*(width/1024), 392.4967425588791*(height/1024))
    CGContextAddCurveToPoint(ctx, 450.4893789762011*(width/1024), 392.4967425588791*(height/1024), 456.41356820482065*(width/1024), 391.5459628874997*(height/1024), 456.41356820482065*(width/1024), 391.5459628874997*(height/1024))
    CGContextAddCurveToPoint(ctx, 456.41356820482065*(width/1024), 391.5459628874997*(height/1024), 451.99371998757545*(width/1024), 387.4882613538091*(height/1024), 451.99371998757545*(width/1024), 387.4882613538091*(height/1024))
    CGContextAddCurveToPoint(ctx, 449.81731472026917*(width/1024), 389.858909086482*(height/1024), 447.6352612433972*(width/1024), 392.25045222094366*(height/1024), 445.4913181378916*(width/1024), 394.61809487804055*(height/1024))
    CGContextAddCurveToPoint(ctx, 445.4913181378916*(width/1024), 394.61809487804055*(height/1024), 449.9388593740521*(width/1024), 398.6454236394719*(height/1024), 449.9388593740521*(width/1024), 398.6454236394719*(height/1024))
    CGContextAddCurveToPoint(ctx, 449.9388593740521*(width/1024), 398.6454236394719*(height/1024), 453.73520643958216*(width/1024), 393.9991618132248*(height/1024), 453.73520643958216*(width/1024), 393.9991618132248*(height/1024))
    CGContextAddCurveToPoint(ctx, 445.1595577112175*(width/1024), 386.9922086748907*(height/1024), 433.3317716168832*(width/1024), 382.99999999999983*(height/1024), 420.7491190979563*(width/1024), 382.99999999999983*(height/1024))
    CGContextAddCurveToPoint(ctx, 395.79899888643615*(width/1024), 382.99999999999983*(height/1024), 375.01464944662916*(width/1024), 398.69243250673105*(height/1024), 375.01464944662916*(width/1024), 418.99999999999983*(height/1024))
    CGContextAddCurveToPoint(ctx, 375.01464944662916*(width/1024), 439.30756749326866*(height/1024), 395.79899888643615*(width/1024), 454.99999999999983*(height/1024), 420.7491190979563*(width/1024), 454.99999999999983*(height/1024))
    CGContextAddCurveToPoint(ctx, 421.0729187474434*(width/1024), 454.99999999999983*(height/1024), 421.6217825138303*(width/1024), 448.99290785454997*(height/1024), 421.6217825138303*(width/1024), 448.99290785454997*(height/1024))
    CGContextAddCurveToPoint(ctx, 421.6217825138303*(width/1024), 448.99290785454997*(height/1024), 415.04137774905337*(width/1024), 455.40568220502655*(height/1024), 415.04137774905337*(width/1024), 458.99999999999983*(height/1024))
    CGContextAddCurveToPoint(ctx, 415.04137774905337*(width/1024), 484.8721729028828*(height/1024), 425.8592426028799*(width/1024), 509.1118271848519*(height/1024), 444.7280447175492*(width/1024), 526.9945212305943*(height/1024))
    CGContextAddCurveToPoint(ctx, 452.8845771755908*(width/1024), 534.724782724403*(height/1024), 462.65075862736427*(width/1024), 539.1713785475918*(height/1024), 474.69442811508566*(width/1024), 541.2945937486877*(height/1024))
    CGContextAddCurveToPoint(ctx, 483.5783697350049*(width/1024), 542.8607708936427*(height/1024), 490.89632229850577*(width/1024), 543.113631278727*(height/1024), 508.4219219246935*(width/1024), 542.9812118916877*(height/1024))
    CGContextAddCurveToPoint(ctx, 512.1415951745471*(width/1024), 542.9531068988636*(height/1024), 513.879928627189*(width/1024), 542.9433593749998*(height/1024), 516.004263050607*(width/1024), 542.9433593749998*(height/1024))
    CGContextAddCurveToPoint(ctx, 518.1285974784993*(width/1024), 542.9433593749998*(height/1024), 519.8669309615159*(width/1024), 542.9531068991637*(height/1024), 523.586604075454*(width/1024), 542.9812118916789*(height/1024))
    CGContextAddCurveToPoint(ctx, 541.1122030403181*(width/1024), 543.1136312771043*(height/1024), 548.430154947097*(width/1024), 542.8607708977116*(height/1024), 557.3140959394507*(width/1024), 541.2945937339695*(height/1024))
    CGContextAddCurveToPoint(ctx, 569.3577644075393*(width/1024), 539.1713785371738*(height/1024), 579.1239452176087*(width/1024), 534.7247827165878*(height/1024), 587.280477667404*(width/1024), 526.9945212305943*(height/1024))
    CGContextAddCurveToPoint(ctx, 606.1492797820733*(width/1024), 509.1118271848519*(height/1024), 616.9671446358999*(width/1024), 484.8721729028829*(height/1024), 616.9671446358999*(width/1024), 458.99999999999983*(height/1024))
    CGContextAddCurveToPoint(ctx, 616.9671446358999*(width/1024), 455.40568220511716*(height/1024), 610.3867398711591*(width/1024), 448.992907854574*(height/1024), 610.3867398711591*(width/1024), 448.992907854574*(height/1024))
    CGContextAddCurveToPoint(ctx, 610.3867398711591*(width/1024), 448.992907854574*(height/1024), 610.9356036379955*(width/1024), 454.99999999999983*(height/1024), 611.259403286997*(width/1024), 454.99999999999983*(height/1024))
    CGContextAddCurveToPoint(ctx, 636.2095234985171*(width/1024), 454.99999999999983*(height/1024), 656.9938729383241*(width/1024), 439.30756749326866*(height/1024), 656.9938729383241*(width/1024), 418.99999999999983*(height/1024))
    CGContextAddCurveToPoint(ctx, 656.9938729383241*(width/1024), 398.692432506731*(height/1024), 636.2095234985171*(width/1024), 382.99999999999983*(height/1024), 611.259403286997*(width/1024), 382.99999999999983*(height/1024))
    CGContextAddCurveToPoint(ctx, 598.6767507680701*(width/1024), 382.99999999999983*(height/1024), 586.8489646737358*(width/1024), 386.99220867489066*(height/1024), 578.2733159453711*(width/1024), 393.99916181322476*(height/1024))
    CGContextAddCurveToPoint(ctx, 578.2733159453711*(width/1024), 393.99916181322476*(height/1024), 582.0696630109012*(width/1024), 398.6454236394719*(height/1024), 582.0696630109012*(width/1024), 398.6454236394719*(height/1024))
    CGContextAddCurveToPoint(ctx, 582.0696630109012*(width/1024), 398.6454236394719*(height/1024), 586.5172042470617*(width/1024), 394.61809487804055*(height/1024), 586.5172042470617*(width/1024), 394.61809487804055*(height/1024))
    CGContextAddCurveToPoint(ctx, 584.2980105860645*(width/1024), 392.1673500039611*(height/1024), 582.0395379548561*(width/1024), 389.6926999229214*(height/1024), 579.7908220963665*(width/1024), 387.2443435869769*(height/1024))
    CGContextAddCurveToPoint(ctx, 579.7908220963665*(width/1024), 387.2443435869769*(height/1024), 575.3718453967169*(width/1024), 391.30299421593656*(height/1024), 575.3718453967169*(width/1024), 391.30299421593656*(height/1024))
    CGContextAddCurveToPoint(ctx, 575.3718453967169*(width/1024), 391.30299421593656*(height/1024), 581.3001439042804*(width/1024), 392.2278059833904*(height/1024), 581.3001439042804*(width/1024), 392.2278059833904*(height/1024))
    CGContextSetStrokeColorWithColor(ctx, UIColor(hue: 0, saturation: 0, brightness: 1, alpha: 1).CGColor)
    CGContextSetLineWidth(ctx, 14)
    CGContextSetFillColorWithColor(ctx, UIColor(hue: 0, saturation: 0, brightness: 1, alpha: 1).CGColor)
    CGContextDrawPath(ctx, kCGPathFillStroke)
    CGContextRestoreGState(ctx)
    
    //Path
    CGContextSaveGState(ctx)
    CGContextMoveToPoint(ctx, 669.0146494466292*(width/1024), 516.9727840437745*(height/1024))
    CGContextAddCurveToPoint(ctx, 686.1354766904292*(width/1024), 516.9727840437745*(height/1024), 700.0146494466292*(width/1024), 503.0936112875745*(height/1024), 700.0146494466292*(width/1024), 485.9727840437745*(height/1024))
    CGContextAddCurveToPoint(ctx, 700.0146494466292*(width/1024), 468.85195679997446*(height/1024), 686.1354766904292*(width/1024), 454.9727840437745*(height/1024), 669.0146494466292*(width/1024), 454.9727840437745*(height/1024))
    CGContextAddCurveToPoint(ctx, 651.8938222028291*(width/1024), 454.9727840437745*(height/1024), 638.0146494466292*(width/1024), 468.85195679997446*(height/1024), 638.0146494466292*(width/1024), 485.9727840437745*(height/1024))
    CGContextAddCurveToPoint(ctx, 638.0146494466292*(width/1024), 503.0936112875745*(height/1024), 651.8938222028291*(width/1024), 516.9727840437745*(height/1024), 669.0146494466292*(width/1024), 516.9727840437745*(height/1024))
    CGContextAddCurveToPoint(ctx, 669.0146494466292*(width/1024), 516.9727840437745*(height/1024), 669.0146494466292*(width/1024), 516.9727840437745*(height/1024), 669.0146494466292*(width/1024), 516.9727840437745*(height/1024))
    CGContextSetStrokeColorWithColor(ctx, UIColor(hue: 0, saturation: 0, brightness: 1, alpha: 1).CGColor)
    CGContextSetLineWidth(ctx, 14)
    CGContextSetFillColorWithColor(ctx, UIColor(hue: 0, saturation: 0, brightness: 1, alpha: 1).CGColor)
    CGContextDrawPath(ctx, kCGPathFillStroke)
    CGContextRestoreGState(ctx)
    
    //Path
    CGContextSaveGState(ctx)
    CGContextMoveToPoint(ctx, 394.28468738080574*(width/1024), 606.9727840437745*(height/1024))
    CGContextAddCurveToPoint(ctx, 411.40551462460576*(width/1024), 606.9727840437745*(height/1024), 425.28468738080574*(width/1024), 593.0936112875745*(height/1024), 425.28468738080574*(width/1024), 575.9727840437745*(height/1024))
    CGContextAddCurveToPoint(ctx, 425.28468738080574*(width/1024), 558.8519567999745*(height/1024), 411.40551462460576*(width/1024), 544.9727840437745*(height/1024), 394.28468738080574*(width/1024), 544.9727840437745*(height/1024))
    CGContextAddCurveToPoint(ctx, 377.1638601370057*(width/1024), 544.9727840437745*(height/1024), 363.28468738080574*(width/1024), 558.8519567999745*(height/1024), 363.28468738080574*(width/1024), 575.9727840437745*(height/1024))
    CGContextAddCurveToPoint(ctx, 363.28468738080574*(width/1024), 593.0936112875745*(height/1024), 377.1638601370057*(width/1024), 606.9727840437745*(height/1024), 394.28468738080574*(width/1024), 606.9727840437745*(height/1024))
    CGContextAddCurveToPoint(ctx, 394.28468738080574*(width/1024), 606.9727840437745*(height/1024), 394.28468738080574*(width/1024), 606.9727840437745*(height/1024), 394.28468738080574*(width/1024), 606.9727840437745*(height/1024))
    CGContextSetStrokeColorWithColor(ctx, UIColor(hue: 0, saturation: 0, brightness: 1, alpha: 1).CGColor)
    CGContextSetLineWidth(ctx, 14)
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
    
    //Oval_17
    CGContextSaveGState(ctx)
    CGContextMoveToPoint(ctx, 512.0000000000002*(width/1024), 665.97287214308*(height/1024))
    CGContextAddCurveToPoint(ctx, 512.0000000000002*(width/1024), 665.97287214308*(height/1024), 621.1746682581922*(width/1024), 665.97287214308*(height/1024), 621.1746682581922*(width/1024), 665.97287214308*(height/1024))
    CGContextAddCurveToPoint(ctx, 621.1746682581922*(width/1024), 665.97287214308*(height/1024), 630.1485851189852*(width/1024), 665.97287214308*(height/1024), 630.1485851189852*(width/1024), 665.97287214308*(height/1024))
    CGContextAddCurveToPoint(ctx, 630.1485851189852*(width/1024), 665.97287214308*(height/1024), 632.699506939455*(width/1024), 657.3839870799005*(height/1024), 632.699506939455*(width/1024), 657.3839870799005*(height/1024))
    CGContextAddCurveToPoint(ctx, 632.7796022013744*(width/1024), 657.1143084902978*(height/1024), 632.9026968865148*(width/1024), 656.6792805679929*(height/1024), 633.0624473800548*(width/1024), 656.0841964447716*(height/1024))
    CGContextAddCurveToPoint(ctx, 633.3119848481477*(width/1024), 655.1546482341809*(height/1024), 633.5854130134569*(width/1024), 654.075848036179*(height/1024), 633.8763710077553*(width/1024), 652.8530775896324*(height/1024))
    CGContextAddCurveToPoint(ctx, 634.6900463097601*(width/1024), 649.433552668946*(height/1024), 635.4969612168034*(width/1024), 645.5030362408214*(height/1024), 636.2459498249327*(width/1024), 641.1036609020985*(height/1024))
    CGContextAddCurveToPoint(ctx, 638.3674141863337*(width/1024), 628.6426996909047*(height/1024), 639.6363770248577*(width/1024), 614.8270978726543*(height/1024), 639.6363770248577*(width/1024), 599.9939772355826*(height/1024))
    CGContextAddCurveToPoint(ctx, 639.6363770248577*(width/1024), 580.9197831299614*(height/1024), 637.5214300502586*(width/1024), 561.5322017278675*(height/1024), 632.8625317496947*(width/1024), 542.1820650865435*(height/1024))
    CGContextAddCurveToPoint(ctx, 624.7965388448987*(width/1024), 508.68099792719806*(height/1024), 611.3228628375787*(width/1024), 480.36271770828085*(height/1024), 592.6616499114127*(width/1024), 459.853121056145*(height/1024))
    CGContextAddCurveToPoint(ctx, 571.500058479601*(width/1024), 436.5954846687913*(height/1024), 544.2553446784264*(width/1024), 424*(height/1024), 512.0000000000002*(width/1024), 424*(height/1024))
    CGContextAddCurveToPoint(ctx, 479.74465532157393*(width/1024), 424*(height/1024), 452.4999415203993*(width/1024), 436.59548466879124*(height/1024), 431.33835008858756*(width/1024), 459.853121056145*(height/1024))
    CGContextAddCurveToPoint(ctx, 412.67713716242173*(width/1024), 480.3627177082807*(height/1024), 399.2034611551016*(width/1024), 508.6809979271982*(height/1024), 391.1374682503056*(width/1024), 542.1820650865435*(height/1024))
    CGContextAddCurveToPoint(ctx, 386.47856994974165*(width/1024), 561.5322017278673*(height/1024), 384.36362297514256*(width/1024), 580.9197831299621*(height/1024), 384.36362297514256*(width/1024), 599.9939772355826*(height/1024))
    CGContextAddCurveToPoint(ctx, 384.36362297514256*(width/1024), 614.8270978726543*(height/1024), 385.6325858136664*(width/1024), 628.642699690904*(height/1024), 387.75405017506745*(width/1024), 641.1036609020985*(height/1024))
    CGContextAddCurveToPoint(ctx, 388.503038783197*(width/1024), 645.5030362408221*(height/1024), 389.30995369024004*(width/1024), 649.4335526689456*(height/1024), 390.12362899224496*(width/1024), 652.8530775896324*(height/1024))
    CGContextAddCurveToPoint(ctx, 390.414586986544*(width/1024), 654.0758480361819*(height/1024), 390.688015151852*(width/1024), 655.1546482341789*(height/1024), 390.93755261994545*(width/1024), 656.0841964447716*(height/1024))
    CGContextAddCurveToPoint(ctx, 391.0973031134853*(width/1024), 656.6792805679927*(height/1024), 391.2203977986251*(width/1024), 657.1143084902951*(height/1024), 391.3004930605454*(width/1024), 657.3839870799009*(height/1024))
    CGContextAddCurveToPoint(ctx, 391.3004930605454*(width/1024), 657.3839870799009*(height/1024), 393.851414881015*(width/1024), 665.97287214308*(height/1024), 393.851414881015*(width/1024), 665.97287214308*(height/1024))
    CGContextAddCurveToPoint(ctx, 393.851414881015*(width/1024), 665.97287214308*(height/1024), 402.82533174180804*(width/1024), 665.97287214308*(height/1024), 402.82533174180804*(width/1024), 665.97287214308*(height/1024))
    CGContextAddCurveToPoint(ctx, 402.82533174180804*(width/1024), 665.97287214308*(height/1024), 512.0000000000002*(width/1024), 665.97287214308*(height/1024), 512.0000000000002*(width/1024), 665.97287214308*(height/1024))
    CGContextSetFillColorWithColor(ctx, UIColor(hue: 0, saturation: 0, brightness: 0.10196078431372549, alpha: 1).CGColor)
    CGContextDrawPath(ctx, kCGPathFill)
    CGContextRestoreGState(ctx)
    
    //Path
    CGContextSaveGState(ctx)
    CGContextMoveToPoint(ctx, 512.0000000000002*(width/1024), 653.97287214308*(height/1024))
    CGContextAddCurveToPoint(ctx, 512.0000000000002*(width/1024), 653.97287214308*(height/1024), 621.1746682581922*(width/1024), 653.97287214308*(height/1024), 621.1746682581922*(width/1024), 653.97287214308*(height/1024))
    CGContextAddCurveToPoint(ctx, 621.1746682581922*(width/1024), 653.97287214308*(height/1024), 635.6668808588371*(width/1024), 605.1779826489042*(height/1024), 621.1746682581922*(width/1024), 544.9864360715401*(height/1024))
    CGContextAddCurveToPoint(ctx, 606.6824556575473*(width/1024), 484.79488949417583*(height/1024), 572.2955043434738*(width/1024), 436*(height/1024), 512.0000000000002*(width/1024), 436*(height/1024))
    CGContextAddCurveToPoint(ctx, 451.7044956565265*(width/1024), 436*(height/1024), 417.31754434245295*(width/1024), 484.79488949417583*(height/1024), 402.825331741808*(width/1024), 544.9864360715401*(height/1024))
    CGContextAddCurveToPoint(ctx, 388.333119141163*(width/1024), 605.1779826489042*(height/1024), 402.825331741808*(width/1024), 653.97287214308*(height/1024), 402.825331741808*(width/1024), 653.97287214308*(height/1024))
    CGContextAddCurveToPoint(ctx, 402.825331741808*(width/1024), 653.97287214308*(height/1024), 512.0000000000002*(width/1024), 653.97287214308*(height/1024), 512.0000000000002*(width/1024), 653.97287214308*(height/1024))
    CGContextSetFillColorWithColor(ctx, UIColor(hue: 0, saturation: 0, brightness: 1, alpha: 1).CGColor)
    CGContextDrawPath(ctx, kCGPathFill)
    CGContextRestoreGState(ctx)
    
    //Oval_34
    CGContextSaveGState(ctx)
    CGContextMoveToPoint(ctx, 425.60103626943004*(width/1024), 609.216796875*(height/1024))
    CGContextAddCurveToPoint(ctx, 447.2696819293598*(width/1024), 616.8825158488469*(height/1024), 490.35721610535404*(width/1024), 605.681640625*(height/1024), 490.35721610535404*(width/1024), 585.94921875*(height/1024))
    CGContextAddCurveToPoint(ctx, 490.35721610535404*(width/1024), 566.216796875*(height/1024), 474.1711058937824*(width/1024), 579.3124084472656*(height/1024), 468.63421578151986*(width/1024), 562.6415100097656*(height/1024))
    CGContextAddCurveToPoint(ctx, 463.0973256692574*(width/1024), 545.9706115722656*(height/1024), 424.4643393168981*(width/1024), 515.125*(height/1024), 410.08013547063905*(width/1024), 515.125*(height/1024))
    CGContextAddCurveToPoint(ctx, 395.69593162437997*(width/1024), 515.125*(height/1024), 395.5687877806563*(width/1024), 553.5143880063999*(height/1024), 395.5687877806563*(width/1024), 571.1875*(height/1024))
    CGContextAddCurveToPoint(ctx, 395.5687877806563*(width/1024), 579.9129518381488*(height/1024), 404.470514901959*(width/1024), 601.7414501867001*(height/1024), 425.60103626943004*(width/1024), 609.216796875*(height/1024))
    CGContextSetFillColorWithColor(ctx, UIColor(hue: 0, saturation: 0, brightness: 0.10196078431372549, alpha: 1).CGColor)
    CGContextDrawPath(ctx, kCGPathFill)
    CGContextRestoreGState(ctx)
    
    //Oval_32
    CGContextSaveGState(ctx)
    CGContextMoveToPoint(ctx, 555.2304935441857*(width/1024), 635.9007976578482*(height/1024))
    CGContextAddCurveToPoint(ctx, 560.5503205003074*(width/1024), 631.6627300815602*(height/1024), 601.586023027474*(width/1024), 622.4125687954153*(height/1024), 601.586023027474*(width/1024), 617.8287156336526*(height/1024))
    CGContextAddCurveToPoint(ctx, 601.586023027474*(width/1024), 613.2448624718899*(height/1024), 594.531802478392*(width/1024), 592.1755370472997*(height/1024), 594.531802478392*(width/1024), 586.8439314691404*(height/1024))
    CGContextAddCurveToPoint(ctx, 594.531802478392*(width/1024), 575.2332415252896*(height/1024), 561.5148238404995*(width/1024), 559.5566350193578*(height/1024), 549.8840808915643*(width/1024), 559.5566350193578*(height/1024))
    CGContextAddCurveToPoint(ctx, 538.2533379426291*(width/1024), 559.5566350193578*(height/1024), 533.0461112144147*(width/1024), 604.6429845066625*(height/1024), 535.4322828729453*(width/1024), 617.8287144871313*(height/1024))
    CGContextAddCurveToPoint(ctx, 537.8184545314757*(width/1024), 631.0144444676*(height/1024), 546.3909623588385*(width/1024), 642.9428557577075*(height/1024), 555.2304935441857*(width/1024), 635.9007976578482*(height/1024))
    CGContextSetFillColorWithColor(ctx, UIColor(hue: 0, saturation: 0, brightness: 0.10196078431372549, alpha: 1).CGColor)
    CGContextDrawPath(ctx, kCGPathFill)
    CGContextRestoreGState(ctx)
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
    
    //Oval_8
    CGContextSaveGState(ctx)
    CGContextMoveToPoint(ctx, 581.3001439042804*(width/1024), 392.2278059833906*(height/1024))
    CGContextAddCurveToPoint(ctx, 581.8812057646674*(width/1024), 388.5030391919623*(height/1024), 582.1280802281974*(width/1024), 384.7082294137639*(height/1024), 581.9811237765232*(width/1024), 380.87557796396294*(height/1024))
    CGContextAddCurveToPoint(ctx, 581.8938187740887*(width/1024), 378.59864734714637*(height/1024), 581.6629795851687*(width/1024), 376.20143506769557*(height/1024), 581.3025786549557*(width/1024), 373.69558311596444*(height/1024))
    CGContextAddCurveToPoint(ctx, 580.6479772514373*(width/1024), 369.14416810256984*(height/1024), 579.5861501717229*(width/1024), 364.34938908428046*(height/1024), 578.2300148148281*(width/1024), 359.4625888603669*(height/1024))
    CGContextAddCurveToPoint(ctx, 577.4160116705968*(width/1024), 356.529348658885*(height/1024), 576.5449128217041*(width/1024), 353.73933394064676*(height/1024), 575.6723736430656*(width/1024), 351.17773633590355*(height/1024))
    CGContextAddCurveToPoint(ctx, 575.1439473967661*(width/1024), 349.6263843279437*(height/1024), 574.7270411981087*(width/1024), 348.4819637468205*(height/1024), 574.4772094552375*(width/1024), 347.8319122068779*(height/1024))
    CGContextAddCurveToPoint(ctx, 574.4772094552375*(width/1024), 347.8319122068779*(height/1024), 571.8410677983517*(width/1024), 340.9727840437747*(height/1024), 571.8410677983517*(width/1024), 340.9727840437747*(height/1024))
    CGContextAddCurveToPoint(ctx, 571.8410677983517*(width/1024), 340.9727840437747*(height/1024), 565.6476386293631*(width/1024), 344.92731525768176*(height/1024), 565.6476386293631*(width/1024), 344.92731525768176*(height/1024))
    CGContextAddCurveToPoint(ctx, 565.3767240698294*(width/1024), 345.1002953714032*(height/1024), 564.9293077837303*(width/1024), 345.39883508880337*(height/1024), 564.3301308221291*(width/1024), 345.8183236536192*(height/1024))
    CGContextAddCurveToPoint(ctx, 563.3663545625581*(width/1024), 346.49307109192296*(height/1024), 562.3015654239258*(width/1024), 347.27890454782454*(height/1024), 561.160416860655*(width/1024), 348.1715636506782*(height/1024))
    CGContextAddCurveToPoint(ctx, 557.9148240965897*(width/1024), 350.7104161877175*(height/1024), 554.6727099430967*(width/1024), 353.6193696340328*(height/1024), 551.6314576959123*(width/1024), 356.8726881485986*(height/1024))
    CGContextAddCurveToPoint(ctx, 548.609686941943*(width/1024), 360.10516672704046*(height/1024), 545.9460979655718*(width/1024), 363.51322116389525*(height/1024), 543.7416837732567*(width/1024), 367.0934084931176*(height/1024))
    CGContextAddCurveToPoint(ctx, 542.9487643252074*(width/1024), 368.3811883354431*(height/1024), 548.5974852584762*(width/1024), 368.11327518610534*(height/1024), 548.5974852584762*(width/1024), 368.11327518610534*(height/1024))
    CGContextAddCurveToPoint(ctx, 538.191125300689*(width/1024), 364.7405278601279*(height/1024), 527.2181375789587*(width/1024), 363.00000000000006*(height/1024), 516.0042611924766*(width/1024), 363.00000000000006*(height/1024))
    CGContextAddCurveToPoint(ctx, 504.70557611464517*(width/1024), 363.00000000000006*(height/1024), 493.6517074507959*(width/1024), 364.76696657731185*(height/1024), 483.1760731330279*(width/1024), 368.1897371306993*(height/1024))
    CGContextAddCurveToPoint(ctx, 483.1760731330279*(width/1024), 368.1897371306993*(height/1024), 488.8145009232867*(width/1024), 368.4076616583924*(height/1024), 488.0052811637005*(width/1024), 367.09340849311764*(height/1024))
    CGContextAddCurveToPoint(ctx, 485.8008669713855*(width/1024), 363.51322116389554*(height/1024), 483.13727799501385*(width/1024), 360.1051667270402*(height/1024), 480.11550724104484*(width/1024), 356.8726881485987*(height/1024))
    CGContextAddCurveToPoint(ctx, 477.0742549938602*(width/1024), 353.6193696340327*(height/1024), 473.8321408403676*(width/1024), 350.71041618771767*(height/1024), 470.58654807630205*(width/1024), 348.1715636506782*(height/1024))
    CGContextAddCurveToPoint(ctx, 469.4453995130315*(width/1024), 347.27890454782465*(height/1024), 468.38061037439866*(width/1024), 346.4930710919227*(height/1024), 467.4168341148279*(width/1024), 345.81832365361913*(height/1024))
    CGContextAddCurveToPoint(ctx, 466.81765715322626*(width/1024), 345.398835088803*(height/1024), 466.37024086712825*(width/1024), 345.1002953714036*(height/1024), 466.099326307594*(width/1024), 344.92731525768176*(height/1024))
    CGContextAddCurveToPoint(ctx, 466.099326307594*(width/1024), 344.92731525768176*(height/1024), 459.9058971386054*(width/1024), 340.9727840437747*(height/1024), 459.9058971386054*(width/1024), 340.9727840437747*(height/1024))
    CGContextAddCurveToPoint(ctx, 459.9058971386054*(width/1024), 340.9727840437747*(height/1024), 457.26975548171964*(width/1024), 347.831912206878*(height/1024), 457.26975548171964*(width/1024), 347.831912206878*(height/1024))
    CGContextAddCurveToPoint(ctx, 457.0199237388481*(width/1024), 348.4819637468213*(height/1024), 456.603017540191*(width/1024), 349.6263843279439*(height/1024), 456.07459129389144*(width/1024), 351.1777363359036*(height/1024))
    CGContextAddCurveToPoint(ctx, 455.2020521152524*(width/1024), 353.7393339406484*(height/1024), 454.33095326636027*(width/1024), 356.52934865888466*(height/1024), 453.51695012212906*(width/1024), 359.46258886036696*(height/1024))
    CGContextAddCurveToPoint(ctx, 452.1608147652343*(width/1024), 364.34938908428023*(height/1024), 451.0989876855197*(width/1024), 369.14416810257023*(height/1024), 450.44438628200135*(width/1024), 373.69558311596444*(height/1024))
    CGContextAddCurveToPoint(ctx, 450.08398535178844*(width/1024), 376.20143506769546*(height/1024), 449.85314616286837*(width/1024), 378.59864734714665*(height/1024), 449.7658411604338*(width/1024), 380.87557796396294*(height/1024))
    CGContextAddCurveToPoint(ctx, 449.61529935096314*(width/1024), 384.8017362084671*(height/1024), 449.8779553946917*(width/1024), 388.6870386866386*(height/1024), 450.4893789762011*(width/1024), 392.4967425588793*(height/1024))
    CGContextAddCurveToPoint(ctx, 450.4893789762011*(width/1024), 392.4967425588793*(height/1024), 451.99371998757545*(width/1024), 387.4882613538093*(height/1024), 451.99371998757545*(width/1024), 387.4882613538093*(height/1024))
    CGContextAddCurveToPoint(ctx, 449.81731472026917*(width/1024), 389.85890908648224*(height/1024), 444.44109823185073*(width/1024), 387.79698116239433*(height/1024), 438.900567251997*(width/1024), 385.9243545744881*(height/1024))
    CGContextAddCurveToPoint(ctx, 433.256270783117*(width/1024), 384.0166566162811*(height/1024), 427.09881215377214*(width/1024), 383.00000000000006*(height/1024), 420.7491190979563*(width/1024), 383.00000000000006*(height/1024))
    CGContextAddCurveToPoint(ctx, 395.7989988864361*(width/1024), 383.00000000000006*(height/1024), 375.01464944662916*(width/1024), 398.6924325067313*(height/1024), 375.01464944662916*(width/1024), 419.00000000000006*(height/1024))
    CGContextAddCurveToPoint(ctx, 375.01464944662916*(width/1024), 439.3075674932689*(height/1024), 395.79899888643615*(width/1024), 455.00000000000006*(height/1024), 420.7491190979563*(width/1024), 455.00000000000006*(height/1024))
    CGContextAddCurveToPoint(ctx, 421.0729187474434*(width/1024), 455.00000000000006*(height/1024), 415.66224344049544*(width/1024), 448.29728293162475*(height/1024), 415.66224344049544*(width/1024), 448.29728293162475*(height/1024))
    CGContextAddCurveToPoint(ctx, 415.2493760082197*(width/1024), 451.8343896592085*(height/1024), 415.04137774905337*(width/1024), 455.4056822050268*(height/1024), 415.04137774905337*(width/1024), 459.00000000000006*(height/1024))
    CGContextAddCurveToPoint(ctx, 415.04137774905337*(width/1024), 484.87217290288305*(height/1024), 425.8592426028799*(width/1024), 509.11182718485213*(height/1024), 444.7280447175492*(width/1024), 526.9945212305945*(height/1024))
    CGContextAddCurveToPoint(ctx, 452.8845771755908*(width/1024), 534.7247827244032*(height/1024), 462.65075862736427*(width/1024), 539.171378547592*(height/1024), 474.69442811508566*(width/1024), 541.2945937486879*(height/1024))
    CGContextAddCurveToPoint(ctx, 483.5783697350049*(width/1024), 542.8607708936429*(height/1024), 490.89632229850577*(width/1024), 543.1136312787272*(height/1024), 508.4219219246935*(width/1024), 542.981211891688*(height/1024))
    CGContextAddCurveToPoint(ctx, 512.1415951745471*(width/1024), 542.9531068988638*(height/1024), 513.879928627189*(width/1024), 542.943359375*(height/1024), 516.004263050607*(width/1024), 542.943359375*(height/1024))
    CGContextAddCurveToPoint(ctx, 518.1285974784993*(width/1024), 542.943359375*(height/1024), 519.8669309615159*(width/1024), 542.9531068991639*(height/1024), 523.586604075454*(width/1024), 542.9812118916791*(height/1024))
    CGContextAddCurveToPoint(ctx, 541.1122030403181*(width/1024), 543.1136312771046*(height/1024), 548.430154947097*(width/1024), 542.8607708977119*(height/1024), 557.3140959394507*(width/1024), 541.2945937339697*(height/1024))
    CGContextAddCurveToPoint(ctx, 569.3577644075393*(width/1024), 539.1713785371741*(height/1024), 579.1239452176087*(width/1024), 534.724782716588*(height/1024), 587.280477667404*(width/1024), 526.9945212305945*(height/1024))
    CGContextAddCurveToPoint(ctx, 606.1492797820733*(width/1024), 509.11182718485213*(height/1024), 616.9671446358999*(width/1024), 484.8721729028831*(height/1024), 616.9671446358999*(width/1024), 459.00000000000006*(height/1024))
    CGContextAddCurveToPoint(ctx, 616.9671446358999*(width/1024), 455.4056822051174*(height/1024), 610.3867398711591*(width/1024), 448.99290785457424*(height/1024), 610.3867398711591*(width/1024), 448.99290785457424*(height/1024))
    CGContextAddCurveToPoint(ctx, 610.3867398711591*(width/1024), 448.99290785457424*(height/1024), 610.9356036379955*(width/1024), 455.00000000000006*(height/1024), 611.259403286997*(width/1024), 455.00000000000006*(height/1024))
    CGContextAddCurveToPoint(ctx, 636.2095234985171*(width/1024), 455.00000000000006*(height/1024), 656.9938729383241*(width/1024), 439.3075674932689*(height/1024), 656.9938729383241*(width/1024), 419.00000000000006*(height/1024))
    CGContextAddCurveToPoint(ctx, 656.9938729383241*(width/1024), 398.6924325067312*(height/1024), 636.2095234985171*(width/1024), 383.00000000000006*(height/1024), 611.259403286997*(width/1024), 383.00000000000006*(height/1024))
    CGContextAddCurveToPoint(ctx, 598.6767507680701*(width/1024), 383.00000000000006*(height/1024), 582.0395379548561*(width/1024), 389.69269992292163*(height/1024), 579.7908220963665*(width/1024), 387.24434358697715*(height/1024))
    CGContextAddCurveToPoint(ctx, 579.7908220963665*(width/1024), 387.24434358697715*(height/1024), 581.3001439042804*(width/1024), 392.2278059833906*(height/1024), 581.3001439042804*(width/1024), 392.2278059833906*(height/1024))
    CGContextSetFillColorWithColor(ctx, UIColor(hue: 0, saturation: 0, brightness: 0.10196078431372549, alpha: 1).CGColor)
    CGContextDrawPath(ctx, kCGPathFill)
    CGContextRestoreGState(ctx)
    
    //Oval_9
    CGContextSaveGState(ctx)
    CGContextMoveToPoint(ctx, 581.4499308150464*(width/1024), 406.8999559791027*(height/1024))
    CGContextAddCurveToPoint(ctx, 581.4499308150464*(width/1024), 406.8999559791027*(height/1024), 585.8660100764313*(width/1024), 403.29168546571924*(height/1024), 585.8660100764313*(width/1024), 403.29168546571924*(height/1024))
    CGContextAddCurveToPoint(ctx, 592.2402599002594*(width/1024), 398.0834416089172*(height/1024), 601.3756259982349*(width/1024), 395.00000000000006*(height/1024), 611.259403286997*(width/1024), 395.00000000000006*(height/1024))
    CGContextAddCurveToPoint(ctx, 630.1987663351146*(width/1024), 395.00000000000006*(height/1024), 644.9938729383241*(width/1024), 406.1704825052689*(height/1024), 644.9938729383241*(width/1024), 419.00000000000006*(height/1024))
    CGContextAddCurveToPoint(ctx, 644.9938729383241*(width/1024), 431.8295174947312*(height/1024), 630.1987663351146*(width/1024), 443.00000000000006*(height/1024), 611.259403286997*(width/1024), 443.00000000000006*(height/1024))
    CGContextAddCurveToPoint(ctx, 611.0006729808135*(width/1024), 443.00000000000006*(height/1024), 603.6327384015638*(width/1024), 442.8822359684233*(height/1024), 603.6327384015638*(width/1024), 442.8822359684233*(height/1024))
    CGContextAddCurveToPoint(ctx, 603.6327384015638*(width/1024), 442.8822359684233*(height/1024), 604.4272007978172*(width/1024), 449.68853277743995*(height/1024), 604.4272007978172*(width/1024), 449.68853277743995*(height/1024))
    CGContextAddCurveToPoint(ctx, 604.7862014205784*(width/1024), 452.76415322802086*(height/1024), 604.9671446358999*(width/1024), 455.8709155572462*(height/1024), 604.9671446358999*(width/1024), 459.0000000000001*(height/1024))
    CGContextAddCurveToPoint(ctx, 604.9671446358999*(width/1024), 481.51680541529953*(height/1024), 595.5451598643815*(width/1024), 502.6287028735856*(height/1024), 579.0258424031007*(width/1024), 518.2846993809055*(height/1024))
    CGContextAddCurveToPoint(ctx, 572.7099969503086*(width/1024), 524.270470559494*(height/1024), 565.0942648460807*(width/1024), 527.737955260417*(height/1024), 555.2307065602736*(width/1024), 529.4768321568041*(height/1024))
    CGContextAddCurveToPoint(ctx, 547.3256949626327*(width/1024), 530.8704308596768*(height/1024), 540.44345634029*(width/1024), 531.1082358481879*(height/1024), 523.6772707209464*(width/1024), 530.9815544149261*(height/1024))
    CGContextAddCurveToPoint(ctx, 519.9278220798824*(width/1024), 530.9532244453924*(height/1024), 518.168525884563*(width/1024), 530.943359375*(height/1024), 516.004263050607*(width/1024), 530.943359375*(height/1024))
    CGContextAddCurveToPoint(ctx, 513.8400002217278*(width/1024), 530.943359375*(height/1024), 512.0807040581963*(width/1024), 530.9532244450827*(height/1024), 508.3312552815173*(width/1024), 530.9815544149174*(height/1024))
    CGContextAddCurveToPoint(ctx, 491.5650689326902*(width/1024), 531.1082358504548*(height/1024), 484.6828296323081*(width/1024), 530.8704308545031*(height/1024), 476.77781732728926*(width/1024), 529.476832142086*(height/1024))
    CGContextAddCurveToPoint(ctx, 466.91425803443605*(width/1024), 527.7379552118575*(height/1024), 459.29852533638837*(width/1024), 524.2704704663727*(height/1024), 452.9826799818526*(width/1024), 518.2846993809055*(height/1024))
    CGContextAddCurveToPoint(ctx, 436.46336252057176*(width/1024), 502.62870287358555*(height/1024), 427.04137774905337*(width/1024), 481.5168054152995*(height/1024), 427.04137774905337*(width/1024), 459*(height/1024))
    CGContextAddCurveToPoint(ctx, 427.04137774905337*(width/1024), 455.8709155571855*(height/1024), 427.2223209643817*(width/1024), 452.76415322797914*(height/1024), 427.5813215871652*(width/1024), 449.68853277747564*(height/1024))
    CGContextAddCurveToPoint(ctx, 427.5813215871652*(width/1024), 449.68853277747564*(height/1024), 428.3757839835597*(width/1024), 442.88223596784303*(height/1024), 428.3757839835597*(width/1024), 442.88223596784303*(height/1024))
    CGContextAddCurveToPoint(ctx, 428.3757839835597*(width/1024), 442.88223596784303*(height/1024), 421.00784940438234*(width/1024), 443.00000000000006*(height/1024), 420.7491190979563*(width/1024), 443.00000000000006*(height/1024))
    CGContextAddCurveToPoint(ctx, 401.80975604983865*(width/1024), 443.00000000000006*(height/1024), 387.01464944662916*(width/1024), 431.82951749473125*(height/1024), 387.01464944662916*(width/1024), 419.00000000000006*(height/1024))
    CGContextAddCurveToPoint(ctx, 387.01464944662916*(width/1024), 406.17048250526886*(height/1024), 401.80975604983865*(width/1024), 395.00000000000006*(height/1024), 420.7491190979563*(width/1024), 395.00000000000006*(height/1024))
    CGContextAddCurveToPoint(ctx, 430.63289638671836*(width/1024), 395.00000000000006*(height/1024), 439.76826248469393*(width/1024), 398.0834416089172*(height/1024), 446.142512308522*(width/1024), 403.29168546571924*(height/1024))
    CGContextAddCurveToPoint(ctx, 446.142512308522*(width/1024), 403.29168546571924*(height/1024), 450.55859156990687*(width/1024), 406.89995597910274*(height/1024), 450.55859156990687*(width/1024), 406.89995597910274*(height/1024))
    CGContextAddCurveToPoint(ctx, 450.55859156990687*(width/1024), 406.89995597910274*(height/1024), 462.7981156000833*(width/1024), 393.4636173804497*(height/1024), 462.7981156000833*(width/1024), 393.4636173804497*(height/1024))
    CGContextAddCurveToPoint(ctx, 462.7981156000833*(width/1024), 393.4636173804497*(height/1024), 465.71724159565764*(width/1024), 359.7245539247941*(height/1024), 465.8926591897259*(width/1024), 359.87604685118555*(height/1024))
    CGContextAddCurveToPoint(ctx, 466.0680767837942*(width/1024), 360.027539777577*(height/1024), 482.20362013814304*(width/1024), 381.1317731256778*(height/1024), 482.20362013814304*(width/1024), 381.1317731256778*(height/1024))
    CGContextAddCurveToPoint(ctx, 482.20362013814304*(width/1024), 381.1317731256778*(height/1024), 486.9030151349624*(width/1024), 379.59630994264484*(height/1024), 486.9030151349624*(width/1024), 379.59630994264484*(height/1024))
    CGContextAddCurveToPoint(ctx, 496.17774499998234*(width/1024), 376.56591853056887*(height/1024), 505.97388828727026*(width/1024), 375.00000000000006*(height/1024), 516.0042611924766*(width/1024), 375.00000000000006*(height/1024))
    CGContextAddCurveToPoint(ctx, 525.9594485764316*(width/1024), 375.00000000000006*(height/1024), 535.6841048682937*(width/1024), 376.54251837652515*(height/1024), 544.8977002683547*(width/1024), 379.528685429582*(height/1024))
    CGContextAddCurveToPoint(ctx, 544.8977002683547*(width/1024), 379.528685429582*(height/1024), 549.5850025015595*(width/1024), 381.0478608316648*(height/1024), 549.5850025015595*(width/1024), 381.0478608316648*(height/1024))
    CGContextAddCurveToPoint(ctx, 549.5850025015595*(width/1024), 381.0478608316648*(height/1024), 565.6788881531629*(width/1024), 360.0275397775769*(height/1024), 565.8543057472311*(width/1024), 359.8760468511855*(height/1024))
    CGContextAddCurveToPoint(ctx, 566.0297233412995*(width/1024), 359.72455392479407*(height/1024), 568.9981383565134*(width/1024), 393.23337399365056*(height/1024), 568.9981383565134*(width/1024), 393.23337399365056*(height/1024))
    CGContextAddCurveToPoint(ctx, 568.9981383565134*(width/1024), 393.23337399365056*(height/1024), 581.4499308150464*(width/1024), 406.8999559791027*(height/1024), 581.4499308150464*(width/1024), 406.8999559791027*(height/1024))
    CGContextSetFillColorWithColor(ctx, UIColor(hue: 0, saturation: 0, brightness: 1, alpha: 1).CGColor)
    CGContextDrawPath(ctx, kCGPathFill)
    CGContextRestoreGState(ctx)
  }
  
  func left_arm_2(rect:CGRect){
    let ctx = UIGraphicsGetCurrentContext()
    let width = rect.width
    let height = rect.height
    var pstyleRightAlign = NSMutableParagraphStyle()
    pstyleRightAlign.alignment = NSTextAlignment.Right
    var pstyleLeftAlign = NSMutableParagraphStyle()
    pstyleLeftAlign.alignment = NSTextAlignment.Left
    var pstyleCenterAlign = NSMutableParagraphStyle()
    pstyleCenterAlign.alignment = NSTextAlignment.Center
    
    //Oval_18
    CGContextSaveGState(ctx)
    CGContextMoveToPoint(ctx, 669.2846873808057*(width/1024), 517*(height/1024))
    CGContextAddCurveToPoint(ctx, 686.4055146246058*(width/1024), 517*(height/1024), 700.2846873808057*(width/1024), 503.1208272438*(height/1024), 700.2846873808057*(width/1024), 486*(height/1024))
    CGContextAddCurveToPoint(ctx, 700.2846873808057*(width/1024), 468.8791727562*(height/1024), 686.4055146246058*(width/1024), 455*(height/1024), 669.2846873808057*(width/1024), 455*(height/1024))
    CGContextAddCurveToPoint(ctx, 652.1638601370057*(width/1024), 455*(height/1024), 638.2846873808057*(width/1024), 468.8791727562*(height/1024), 638.2846873808057*(width/1024), 486*(height/1024))
    CGContextAddCurveToPoint(ctx, 638.2846873808057*(width/1024), 503.1208272438*(height/1024), 652.1638601370057*(width/1024), 517*(height/1024), 669.2846873808057*(width/1024), 517*(height/1024))
    CGContextSetFillColorWithColor(ctx, UIColor(hue: 0, saturation: 0, brightness: 0.10196078431372549, alpha: 1).CGColor)
    CGContextDrawPath(ctx, kCGPathFill)
    CGContextRestoreGState(ctx)
    
    //Oval_17
    CGContextSaveGState(ctx)
    CGContextMoveToPoint(ctx, 669*(width/1024), 509.12698412698415*(height/1024))
    CGContextAddCurveToPoint(ctx, 681.7726806422*(width/1024), 509.12698412698415*(height/1024), 692.1269841269841*(width/1024), 498.77268064220004*(height/1024), 692.1269841269841*(width/1024), 486*(height/1024))
    CGContextAddCurveToPoint(ctx, 692.1269841269841*(width/1024), 473.2273193578*(height/1024), 681.7726806422*(width/1024), 462.8730158730159*(height/1024), 669*(width/1024), 462.8730158730159*(height/1024))
    CGContextAddCurveToPoint(ctx, 656.2273193578001*(width/1024), 462.8730158730159*(height/1024), 645.8730158730159*(width/1024), 473.2273193578*(height/1024), 645.8730158730159*(width/1024), 486*(height/1024))
    CGContextAddCurveToPoint(ctx, 645.8730158730159*(width/1024), 498.77268064220004*(height/1024), 656.2273193578001*(width/1024), 509.12698412698415*(height/1024), 669*(width/1024), 509.12698412698415*(height/1024))
    CGContextSetFillColorWithColor(ctx, UIColor(hue: 0, saturation: 0, brightness: 1, alpha: 1).CGColor)
    CGContextDrawPath(ctx, kCGPathFill)
    CGContextRestoreGState(ctx)
  }
  
  func right_arm(rect:CGRect){
    let ctx = UIGraphicsGetCurrentContext()
    let width = rect.width
    let height = rect.height
    var pstyleRightAlign = NSMutableParagraphStyle()
    pstyleRightAlign.alignment = NSTextAlignment.Right
    var pstyleLeftAlign = NSMutableParagraphStyle()
    pstyleLeftAlign.alignment = NSTextAlignment.Left
    var pstyleCenterAlign = NSMutableParagraphStyle()
    pstyleCenterAlign.alignment = NSTextAlignment.Center
    
    //Oval_18
    CGContextSaveGState(ctx)
    CGContextMoveToPoint(ctx, 394.28468738080574*(width/1024), 607*(height/1024))
    CGContextAddCurveToPoint(ctx, 411.40551462460576*(width/1024), 607*(height/1024), 425.28468738080574*(width/1024), 593.1208272438*(height/1024), 425.28468738080574*(width/1024), 576*(height/1024))
    CGContextAddCurveToPoint(ctx, 425.28468738080574*(width/1024), 558.8791727562*(height/1024), 411.40551462460576*(width/1024), 545*(height/1024), 394.28468738080574*(width/1024), 545*(height/1024))
    CGContextAddCurveToPoint(ctx, 377.1638601370057*(width/1024), 545*(height/1024), 363.28468738080574*(width/1024), 558.8791727562*(height/1024), 363.28468738080574*(width/1024), 576*(height/1024))
    CGContextAddCurveToPoint(ctx, 363.28468738080574*(width/1024), 593.1208272438*(height/1024), 377.1638601370057*(width/1024), 607*(height/1024), 394.28468738080574*(width/1024), 607*(height/1024))
    CGContextSetFillColorWithColor(ctx, UIColor(hue: 0, saturation: 0, brightness: 0.10196078431372549, alpha: 1).CGColor)
    CGContextDrawPath(ctx, kCGPathFill)
    CGContextRestoreGState(ctx)
    
    //Oval_17
    CGContextSaveGState(ctx)
    CGContextMoveToPoint(ctx, 394*(width/1024), 599.1269841269841*(height/1024))
    CGContextAddCurveToPoint(ctx, 406.77268064220004*(width/1024), 599.1269841269841*(height/1024), 417.12698412698415*(width/1024), 588.7726806422*(height/1024), 417.12698412698415*(width/1024), 576*(height/1024))
    CGContextAddCurveToPoint(ctx, 417.12698412698415*(width/1024), 563.2273193578001*(height/1024), 406.77268064220004*(width/1024), 552.8730158730159*(height/1024), 394*(width/1024), 552.8730158730159*(height/1024))
    CGContextAddCurveToPoint(ctx, 381.2273193578*(width/1024), 552.8730158730159*(height/1024), 370.8730158730159*(width/1024), 563.2273193578001*(height/1024), 370.8730158730159*(width/1024), 576*(height/1024))
    CGContextAddCurveToPoint(ctx, 370.8730158730159*(width/1024), 588.7726806422*(height/1024), 381.2273193578*(width/1024), 599.1269841269841*(height/1024), 394*(width/1024), 599.1269841269841*(height/1024))
    CGContextSetFillColorWithColor(ctx, UIColor(hue: 0, saturation: 0, brightness: 1, alpha: 1).CGColor)
    CGContextDrawPath(ctx, kCGPathFill)
    CGContextRestoreGState(ctx)
  }
  
  func eyes(rect:CGRect){
    let ctx = UIGraphicsGetCurrentContext()
    let width = rect.width
    let height = rect.height
    var pstyleRightAlign = NSMutableParagraphStyle()
    pstyleRightAlign.alignment = NSTextAlignment.Right
    var pstyleLeftAlign = NSMutableParagraphStyle()
    pstyleLeftAlign.alignment = NSTextAlignment.Left
    var pstyleCenterAlign = NSMutableParagraphStyle()
    pstyleCenterAlign.alignment = NSTextAlignment.Center
    
    //Oval_2
    CGContextSaveGState(ctx)
    CGContextMoveToPoint(ctx, 483.061628454688*(width/1024), 469*(height/1024))
    CGContextAddCurveToPoint(ctx, 494.9562585583253*(width/1024), 469*(height/1024), 504.5987614425982*(width/1024), 459.3741221207*(height/1024), 504.5987614425982*(width/1024), 447.5*(height/1024))
    CGContextAddCurveToPoint(ctx, 504.5987614425982*(width/1024), 435.6258778793*(height/1024), 494.9562585583253*(width/1024), 426*(height/1024), 483.061628454688*(width/1024), 426*(height/1024))
    CGContextAddCurveToPoint(ctx, 471.16699835105067*(width/1024), 426*(height/1024), 461.5244954667778*(width/1024), 435.6258778793*(height/1024), 461.5244954667778*(width/1024), 447.5*(height/1024))
    CGContextAddCurveToPoint(ctx, 461.5244954667778*(width/1024), 459.3741221207*(height/1024), 471.16699835105067*(width/1024), 469*(height/1024), 483.061628454688*(width/1024), 469*(height/1024))
    CGContextSetFillColorWithColor(ctx, UIColor(hue: 0, saturation: 0, brightness: 0, alpha: 1).CGColor)
    CGContextDrawPath(ctx, kCGPathFill)
    CGContextRestoreGState(ctx)
    
    //Oval_4
    CGContextSaveGState(ctx)
    CGContextMoveToPoint(ctx, 485.5244954667778*(width/1024), 461*(height/1024))
    CGContextAddCurveToPoint(ctx, 491.04734296477784*(width/1024), 461*(height/1024), 495.5244954667778*(width/1024), 456.52284749800003*(height/1024), 495.5244954667778*(width/1024), 451*(height/1024))
    CGContextAddCurveToPoint(ctx, 495.5244954667778*(width/1024), 445.477152502*(height/1024), 491.04734296477784*(width/1024), 441*(height/1024), 485.5244954667778*(width/1024), 441*(height/1024))
    CGContextAddCurveToPoint(ctx, 480.00164796877783*(width/1024), 441*(height/1024), 475.5244954667778*(width/1024), 445.477152502*(height/1024), 475.5244954667778*(width/1024), 451*(height/1024))
    CGContextAddCurveToPoint(ctx, 475.5244954667778*(width/1024), 456.52284749800003*(height/1024), 480.00164796877783*(width/1024), 461*(height/1024), 485.5244954667778*(width/1024), 461*(height/1024))
    CGContextSetFillColorWithColor(ctx, UIColor(hue: 0, saturation: 0, brightness: 1, alpha: 1).CGColor)
    CGContextDrawPath(ctx, kCGPathFill)
    CGContextRestoreGState(ctx)
    
    //Oval_3
    CGContextSaveGState(ctx)
    CGContextMoveToPoint(ctx, 549.1756180919936*(width/1024), 469*(height/1024))
    CGContextAddCurveToPoint(ctx, 561.0702481956309*(width/1024), 469*(height/1024), 570.7127510799038*(width/1024), 459.3741221207*(height/1024), 570.7127510799038*(width/1024), 447.5*(height/1024))
    CGContextAddCurveToPoint(ctx, 570.7127510799038*(width/1024), 435.6258778793*(height/1024), 561.0702481956309*(width/1024), 426*(height/1024), 549.1756180919936*(width/1024), 426*(height/1024))
    CGContextAddCurveToPoint(ctx, 537.2809879883563*(width/1024), 426*(height/1024), 527.6384851040834*(width/1024), 435.6258778793*(height/1024), 527.6384851040834*(width/1024), 447.5*(height/1024))
    CGContextAddCurveToPoint(ctx, 527.6384851040834*(width/1024), 459.3741221207*(height/1024), 537.2809879883563*(width/1024), 469*(height/1024), 549.1756180919936*(width/1024), 469*(height/1024))
    CGContextSetFillColorWithColor(ctx, UIColor(hue: 0, saturation: 0, brightness: 0, alpha: 1).CGColor)
    CGContextDrawPath(ctx, kCGPathFill)
    CGContextRestoreGState(ctx)
    
    //Oval_4
    CGContextSaveGState(ctx)
    CGContextMoveToPoint(ctx, 551.6384851040834*(width/1024), 461*(height/1024))
    CGContextAddCurveToPoint(ctx, 557.1613326020835*(width/1024), 461*(height/1024), 561.6384851040834*(width/1024), 456.52284749800003*(height/1024), 561.6384851040834*(width/1024), 451*(height/1024))
    CGContextAddCurveToPoint(ctx, 561.6384851040834*(width/1024), 445.477152502*(height/1024), 557.1613326020835*(width/1024), 441*(height/1024), 551.6384851040834*(width/1024), 441*(height/1024))
    CGContextAddCurveToPoint(ctx, 546.1156376060834*(width/1024), 441*(height/1024), 541.6384851040834*(width/1024), 445.477152502*(height/1024), 541.6384851040834*(width/1024), 451*(height/1024))
    CGContextAddCurveToPoint(ctx, 541.6384851040834*(width/1024), 456.52284749800003*(height/1024), 546.1156376060834*(width/1024), 461*(height/1024), 551.6384851040834*(width/1024), 461*(height/1024))
    CGContextSetFillColorWithColor(ctx, UIColor(hue: 0, saturation: 0, brightness: 1, alpha: 1).CGColor)
    CGContextDrawPath(ctx, kCGPathFill)
    CGContextRestoreGState(ctx)
  }
  
  func mouthNose(rect:CGRect){
    let ctx = UIGraphicsGetCurrentContext()
    let width = rect.width
    let height = rect.height
    var pstyleRightAlign = NSMutableParagraphStyle()
    pstyleRightAlign.alignment = NSTextAlignment.Right
    var pstyleLeftAlign = NSMutableParagraphStyle()
    pstyleLeftAlign.alignment = NSTextAlignment.Left
    var pstyleCenterAlign = NSMutableParagraphStyle()
    pstyleCenterAlign.alignment = NSTextAlignment.Center
    
    //Oval_29
    CGContextSaveGState(ctx)
    CGContextMoveToPoint(ctx, 497.2245250431779*(width/1024), 546*(height/1024))
    CGContextAddCurveToPoint(ctx, 479.24427023535407*(width/1024), 546*(height/1024), 464.6683937823834*(width/1024), 533.6878306195*(height/1024), 464.6683937823834*(width/1024), 518.5*(height/1024))
    CGContextAddCurveToPoint(ctx, 464.6683937823834*(width/1024), 503.3121693805*(height/1024), 479.24427023535407*(width/1024), 491*(height/1024), 497.2245250431779*(width/1024), 491*(height/1024))
    CGContextAddCurveToPoint(ctx, 504.2199362239573*(width/1024), 491*(height/1024), 510.7000325876523*(width/1024), 492.8636716166346*(height/1024), 516.0069084628708*(width/1024), 496.03528524498387*(height/1024))
    CGContextAddCurveToPoint(ctx, 521.3137843380849*(width/1024), 492.86367161663367*(height/1024), 527.7938807017784*(width/1024), 491*(height/1024), 534.7892918825562*(width/1024), 491*(height/1024))
    CGContextAddCurveToPoint(ctx, 552.76954669038*(width/1024), 491*(height/1024), 567.3454231433507*(width/1024), 503.3121693805*(height/1024), 567.3454231433507*(width/1024), 518.5*(height/1024))
    CGContextAddCurveToPoint(ctx, 567.3454231433507*(width/1024), 533.6878306195*(height/1024), 552.76954669038*(width/1024), 546*(height/1024), 534.7892918825562*(width/1024), 546*(height/1024))
    CGContextAddCurveToPoint(ctx, 527.7938807017784*(width/1024), 546*(height/1024), 521.3137858929529*(width/1024), 543.7800120658479*(height/1024), 516.006910017735*(width/1024), 540.6083984375*(height/1024))
    CGContextAddCurveToPoint(ctx, 516.006910017735*(width/1024), 540.6083984375*(height/1024), 504.2199362239573*(width/1024), 546*(height/1024), 497.2245250431779*(width/1024), 546*(height/1024))
    CGContextSetStrokeColorWithColor(ctx, UIColor(hue: 0, saturation: 0, brightness: 0.10196078431372549, alpha: 1).CGColor)
    CGContextSetLineWidth(ctx, 4)
    CGContextSetFillColorWithColor(ctx, UIColor(hue: 0.9381720430107526, saturation: 0.20845170454545464, brightness: 0.9227519132653061, alpha: 1).CGColor)
    CGContextDrawPath(ctx, kCGPathFillStroke)
    CGContextRestoreGState(ctx)
    
    //Oval_30
    CGContextSaveGState(ctx)
    CGContextMoveToPoint(ctx, 503.2348877374784*(width/1024), 527*(height/1024))
    CGContextAddCurveToPoint(ctx, 507.93741591798613*(width/1024), 527*(height/1024), 511.7495682210708*(width/1024), 523.1944203733*(height/1024), 511.7495682210708*(width/1024), 518.5*(height/1024))
    CGContextAddCurveToPoint(ctx, 511.7495682210708*(width/1024), 513.8055796267*(height/1024), 507.93741591798613*(width/1024), 510*(height/1024), 503.2348877374784*(width/1024), 510*(height/1024))
    CGContextAddCurveToPoint(ctx, 498.5323595569706*(width/1024), 510*(height/1024), 494.720207253886*(width/1024), 513.8055796267*(height/1024), 494.720207253886*(width/1024), 518.5*(height/1024))
    CGContextAddCurveToPoint(ctx, 494.720207253886*(width/1024), 523.1944203733*(height/1024), 498.5323595569706*(width/1024), 527*(height/1024), 503.2348877374784*(width/1024), 527*(height/1024))
    CGContextSetFillColorWithColor(ctx, UIColor(hue: 0, saturation: 0, brightness: 0.10196078431372549, alpha: 1).CGColor)
    CGContextDrawPath(ctx, kCGPathFill)
    CGContextRestoreGState(ctx)
    
    //Oval_30
    CGContextSaveGState(ctx)
    CGContextMoveToPoint(ctx, 529.279792746114*(width/1024), 527*(height/1024))
    CGContextAddCurveToPoint(ctx, 533.9823209266218*(width/1024), 527*(height/1024), 537.7944732297065*(width/1024), 523.1944203733*(height/1024), 537.7944732297065*(width/1024), 518.5*(height/1024))
    CGContextAddCurveToPoint(ctx, 537.7944732297065*(width/1024), 513.8055796267*(height/1024), 533.9823209266218*(width/1024), 510*(height/1024), 529.279792746114*(width/1024), 510*(height/1024))
    CGContextAddCurveToPoint(ctx, 524.5772645656062*(width/1024), 510*(height/1024), 520.7651122625216*(width/1024), 513.8055796267*(height/1024), 520.7651122625216*(width/1024), 518.5*(height/1024))
    CGContextAddCurveToPoint(ctx, 520.7651122625216*(width/1024), 523.1944203733*(height/1024), 524.5772645656062*(width/1024), 527*(height/1024), 529.279792746114*(width/1024), 527*(height/1024))
    CGContextSetFillColorWithColor(ctx, UIColor(hue: 0, saturation: 0, brightness: 0.10196078431372549, alpha: 1).CGColor)
    CGContextDrawPath(ctx, kCGPathFill)
    CGContextRestoreGState(ctx)
}
```

###export_as_uiView
currently does nothing, I want this to export things as tagged UIView's where the tag is the name of the group
