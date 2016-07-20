iosViews
========

Sketch plugin to generate ios view code

###pathExporter.sketchplugin (finally fixed)
exports your views as UIBezierPath as swift code
so you'll have something like

    let path = UIBezierPath()
    path.moveToPoint(...)
    ...

####Why?
It's very annoying to draw in ios in code. But it's annoying to draw in sketch and export it as a picture because you can no longer use the CGRect dimensions from ios. You're stuck with whatever dimensions you picked in sketch.

This will generate a bunch of swift functions, with 1 main function which takes in a CGRect so you can put it in layoutSubviews. All your shapes will be relative to how you depict them in sketch and the CGRect. Also you can edit the code and add your own transformations or animations, instead of having to create a ton of assets and load them dynamically.

For instance, if in sketch you offset your creation 20px from the left, and your arboard is 200px in width. Then at runtime of the ios application your creation will be offset 20*(width/200) where width is the width of the ios CGRect at runtime. This of course works with y offset, width, and height.

When you run the plugin it puts the generated code into your artboard, so if you have a very complex shape (or groups of shapes) pasting the code might be slow or even crash sketch. If it is complex and hasn't crashed, it might take minutes (spinning beachball) but it will work.


####How does it work?
1. create an artboard (let's say iphone sized)
1. create some shape you want that you'd have to do in code otherwise
1. select the artboard (make sure it's only the artboard, this is very important)
1. SAVE, because sketch might might crash if you have weirdly intercepting paths in your shape (flatten them, and try to simplify them)
1. run the pathExporter.sketchplugin
  - anything hidden will be ignored
  - you will get code where everything is relative to the artboard
  - NOTE: for complex shapes the export might be slow (take minutes)

####Unfortunatelly this doesn't work with:
1. boolean operations (union, subtract, intersect, difference)
1. radius on object (set the radius on individual path instead of object... click enter > highlight points > set radius)
1. opacity on object (set your opacity on the color directly, and it will work)
1. transformation on the object (flatten them all, if you have a rotated group, ungroup it then flatten it, that way your rotation will be preserved)
1. for fills only solid and linear gradients work, others don't
1. for stroke, only solid color works, others don't
1. more than 1 border or fill (only the last valid border and last valid fill are set, valid = center borders with solid color)
1. inside, outside borders don't work and are ignored (only center border works)
1. blending (will always be treated as "normal")
1. shadows, inner shadows, blurs, reflections are ignored
1. character spacing, line height, paragraph spacing are ignored
1. justified alignment is ignored
1. text layers are ignored
1. even/odd setting on fill is ignored (it uses whatever ios uses, I don't know if it's even/odd or non zero by default)
1. border arrow settings

####TODO:
- fix a lot of the things that don't work
- settle on a good shortcut
- add this to sketch toolbox

####Example
#####Sketch File
![moo png](https://github.com/Charimon/iosViews/blob/master/moo_sketch.png?raw=true "moo_sketch.png")

#####Generated Code
```swift
lazy var outline: CAShapeLayer = {
  let l = CAShapeLayer()
  l.lineWidth = 28
  l.strokeColor = UIColor(hue: 0, saturation: 0, brightness: 1, alpha: 1).CGColor
  l.fillColor = UIColor(hue: 0, saturation: 0, brightness: 1, alpha: 1).CGColor
  self.layer.addSublayer(l)
  return l
  }()
...
func moo(bounds: CGRect) {
  outline.frame = bounds
  outline.path = outline_path(outline.frame)
  body.frame = bounds
  body.path = body_path(body.frame)
  spot2.frame = bounds
  spot2.path = spot2_path(spot2.frame)
  spot.frame = bounds
  spot.path = spot_path(spot.frame)
  armLeft.frame = bounds
  armLeft.path = armLeft_path(armLeft.frame)
  armRight.frame = bounds
  armRight.path = armRight_path(armRight.frame)
  head.frame = bounds
  head.path = head_path(head.frame)
  snout.frame = bounds
  snout.path = snout_path(snout.frame)
  nostrilLeft.frame = bounds
  nostrilLeft.path = nostrilLeft_path(nostrilLeft.frame)
  nostrilRight.frame = bounds
  nostrilRight.path = nostrilRight_path(nostrilRight.frame)
  eyeLeft.frame = bounds
  eyeLeft.path = eyeLeft_path(eyeLeft.frame)
  eyeBallLeft.frame = bounds
  eyeBallLeft.path = eyeBallLeft_path(eyeBallLeft.frame)
  eyeRight.frame = bounds
  eyeRight.path = eyeRight_path(eyeRight.frame)
  eyeBallRight.frame = bounds
  eyeBallRight.path = eyeBallRight_path(eyeBallRight.frame)
}
```
[full swift file](../moo.swift)

#####ios
after adding the following to some UIView
```swift
override func layoutSubviews() {
  moo(self.bounds)
}
```
you should see
![moo_ios png](https://github.com/Charimon/iosViews/blob/master/moo_iphone.png?raw=true "moo_iphone.png")

