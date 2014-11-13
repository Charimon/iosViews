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
1. NOTE: I would advise not using borders since I don't know what to base the border size off (width, height) to scale it for 1x, 2x, 3x, so currently the border width might be iffy

####Unfortunatelly this doesn't work with:
1. boolean operations (union, subtract, intersect, difference)
1. radius on object (set the radius on individual path instead of object... click enter > highlight points > set radius)
1. opacity on object (set your opacity on the color directly, and it will work)
1. transformation on the object (flatten them all, if you have a rotated group, ungroup it then flatten it, that way your rotation will be preserved)
1. any color that isn't a solid (gradients, fills don't work)
1. more than 1 border or fill (only the last valid border and last valid fill are set, valid = center borders with solid color)
1. inside, outside borders don't work and are ignored (only center border works)
1. center border might be iffy since I'm not sure how to best scale it based on width or height or both with respect to the screen
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
...
```
[full swift file](../moo.swift)

#####ios
after adding the following to some UIView
```swift
override func drawRect(rect: CGRect) {
    moo(rect)
}
```
you should see
![moo_ios png](https://github.com/Charimon/iosViews/blob/master/moo_ios.png?raw=true "moo_ios.png")

###export_as_uiView
currently does nothing, I want this to export things as tagged UIView's where the tag is the name of the group
