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

###export_as_uiView
currently does nothing, I want this to export things as tagged UIView's where the tag is the name of the group
