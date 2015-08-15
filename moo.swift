lazy var outline: CAShapeLayer = {
  let l = CAShapeLayer()
  l.lineWidth = 28
  l.strokeColor = UIColor(hue: 0, saturation: 0, brightness: 1, alpha: 1).CGColor
  l.fillColor = UIColor(hue: 0, saturation: 0, brightness: 1, alpha: 1).CGColor
  self.layer.addSublayer(l)
  return l
  }()
func outline_path(bounds: CGRect) -> CGPath {
  let path = UIBezierPath()
  path.moveToPoint(CGPoint(x: 274.37*bounds.width/320 , y: 253*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 244.93*bounds.width/320 , y: 304.5*bounds.height/320), controlPoint1: CGPoint(x: 263.14*bounds.width/320 , y: 284.46*bounds.height/320), controlPoint2:CGPoint(x: 244.93*bounds.width/320 , y: 304.5*bounds.height/320))
  path.addLineToPoint(CGPoint(x: 160*bounds.width/320 , y: 304.5*bounds.height/320))
  path.addLineToPoint(CGPoint(x: 74*bounds.width/320 , y: 304.5*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 44.54*bounds.width/320 , y: 252.96*bounds.height/320), controlPoint1: CGPoint(x: 74*bounds.width/320 , y: 304.5*bounds.height/320), controlPoint2:CGPoint(x: 55.77*bounds.width/320 , y: 284.45*bounds.height/320))
  path.addLineToPoint(CGPoint(x: 44.54*bounds.width/320 , y: 252.96*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 20*bounds.width/320 , y: 227*bounds.height/320), controlPoint1: CGPoint(x: 30.86*bounds.width/320 , y: 252.2*bounds.height/320), controlPoint2:CGPoint(x: 20*bounds.width/320 , y: 240.87*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 35.94*bounds.width/320 , y: 203.02*bounds.height/320), controlPoint1: CGPoint(x: 20*bounds.width/320 , y: 216.21*bounds.height/320), controlPoint2:CGPoint(x: 26.58*bounds.width/320 , y: 206.95*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 36*bounds.width/320 , y: 200.5*bounds.height/320), controlPoint1: CGPoint(x: 35.95*bounds.width/320 , y: 202.18*bounds.height/320), controlPoint2:CGPoint(x: 35.97*bounds.width/320 , y: 201.34*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 61.46*bounds.width/320 , y: 134.08*bounds.height/320), controlPoint1: CGPoint(x: 36.77*bounds.width/320 , y: 177.44*bounds.height/320), controlPoint2:CGPoint(x: 46.48*bounds.width/320 , y: 154.09*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 60*bounds.width/320 , y: 119*bounds.height/320), controlPoint1: CGPoint(x: 60.5*bounds.width/320 , y: 129.28*bounds.height/320), controlPoint2:CGPoint(x: 60*bounds.width/320 , y: 124.25*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 61.69*bounds.width/320 , y: 102.78*bounds.height/320), controlPoint1: CGPoint(x: 60*bounds.width/320 , y: 113.33*bounds.height/320), controlPoint2:CGPoint(x: 60.58*bounds.width/320 , y: 107.92*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 20*bounds.width/320 , y: 75*bounds.height/320), controlPoint1: CGPoint(x: 40.16*bounds.width/320 , y: 102.92*bounds.height/320), controlPoint2:CGPoint(x: 20*bounds.width/320 , y: 90.46*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 57*bounds.width/320 , y: 47*bounds.height/320), controlPoint1: CGPoint(x: 20*bounds.width/320 , y: 59.54*bounds.height/320), controlPoint2:CGPoint(x: 36.57*bounds.width/320 , y: 47*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 88.83*bounds.width/320 , y: 60.71*bounds.height/320), controlPoint1: CGPoint(x: 70.54*bounds.width/320 , y: 47*bounds.height/320), controlPoint2:CGPoint(x: 82.38*bounds.width/320 , y: 52.5*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 96.08*bounds.width/320 , y: 55.68*bounds.height/320), controlPoint1: CGPoint(x: 91.13*bounds.width/320 , y: 58.93*bounds.height/320), controlPoint2:CGPoint(x: 93.56*bounds.width/320 , y: 57.25*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 111*bounds.width/320 , y: 20*bounds.height/320), controlPoint1: CGPoint(x: 94.28*bounds.width/320 , y: 35.75*bounds.height/320), controlPoint2:CGPoint(x: 111*bounds.width/320 , y: 20*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 124.92*bounds.width/320 , y: 43.42*bounds.height/320), controlPoint1: CGPoint(x: 111*bounds.width/320 , y: 20*bounds.height/320), controlPoint2:CGPoint(x: 123.8*bounds.width/320 , y: 31.9*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 160*bounds.width/320 , y: 39*bounds.height/320), controlPoint1: CGPoint(x: 135.84*bounds.width/320 , y: 40.51*bounds.height/320), controlPoint2:CGPoint(x: 147.66*bounds.width/320 , y: 39*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 195.08*bounds.width/320 , y: 43.42*bounds.height/320), controlPoint1: CGPoint(x: 172.34*bounds.width/320 , y: 39*bounds.height/320), controlPoint2:CGPoint(x: 184.16*bounds.width/320 , y: 40.51*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 209*bounds.width/320 , y: 20*bounds.height/320), controlPoint1: CGPoint(x: 196.2*bounds.width/320 , y: 31.9*bounds.height/320), controlPoint2:CGPoint(x: 209*bounds.width/320 , y: 20*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 223.92*bounds.width/320 , y: 55.68*bounds.height/320), controlPoint1: CGPoint(x: 209*bounds.width/320 , y: 20*bounds.height/320), controlPoint2:CGPoint(x: 225.72*bounds.width/320 , y: 35.75*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 231.17*bounds.width/320 , y: 60.71*bounds.height/320), controlPoint1: CGPoint(x: 226.44*bounds.width/320 , y: 57.25*bounds.height/320), controlPoint2:CGPoint(x: 228.87*bounds.width/320 , y: 58.93*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 263*bounds.width/320 , y: 47*bounds.height/320), controlPoint1: CGPoint(x: 237.62*bounds.width/320 , y: 52.5*bounds.height/320), controlPoint2:CGPoint(x: 249.46*bounds.width/320 , y: 47*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 300*bounds.width/320 , y: 75*bounds.height/320), controlPoint1: CGPoint(x: 283.43*bounds.width/320 , y: 47*bounds.height/320), controlPoint2:CGPoint(x: 300*bounds.width/320 , y: 59.54*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 258.31*bounds.width/320 , y: 102.78*bounds.height/320), controlPoint1: CGPoint(x: 300*bounds.width/320 , y: 90.46*bounds.height/320), controlPoint2:CGPoint(x: 279.84*bounds.width/320 , y: 102.92*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 260*bounds.width/320 , y: 119*bounds.height/320), controlPoint1: CGPoint(x: 259.42*bounds.width/320 , y: 107.92*bounds.height/320), controlPoint2:CGPoint(x: 260*bounds.width/320 , y: 113.33*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 258.23*bounds.width/320 , y: 135.56*bounds.height/320), controlPoint1: CGPoint(x: 260*bounds.width/320 , y: 124.79*bounds.height/320), controlPoint2:CGPoint(x: 259.39*bounds.width/320 , y: 130.32*bounds.height/320))
  path.addLineToPoint(CGPoint(x: 258.23*bounds.width/320 , y: 135.56*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 282.93*bounds.width/320 , y: 200.5*bounds.height/320), controlPoint1: CGPoint(x: 272.77*bounds.width/320 , y: 155.24*bounds.height/320), controlPoint2:CGPoint(x: 282.18*bounds.width/320 , y: 178.01*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 282.98*bounds.width/320 , y: 202.59*bounds.height/320), controlPoint1: CGPoint(x: 282.95*bounds.width/320 , y: 201.2*bounds.height/320), controlPoint2:CGPoint(x: 282.97*bounds.width/320 , y: 201.9*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 300*bounds.width/320 , y: 227*bounds.height/320), controlPoint1: CGPoint(x: 292.91*bounds.width/320 , y: 206.25*bounds.height/320), controlPoint2:CGPoint(x: 300*bounds.width/320 , y: 215.8*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 274.37*bounds.width/320 , y: 253*bounds.height/320), controlPoint1: CGPoint(x: 300*bounds.width/320 , y: 241.23*bounds.height/320), controlPoint2:CGPoint(x: 288.56*bounds.width/320 , y: 252.8*bounds.height/320))
  path.addLineToPoint(CGPoint(x: 274.37*bounds.width/320 , y: 253*bounds.height/320))
  return path.CGPath
}
lazy var body: CAShapeLayer = {
  let l = CAShapeLayer()
  l.lineWidth = 10
  l.strokeColor = UIColor(hue: 0, saturation: 0, brightness: 0, alpha: 1).CGColor
  l.fillColor = UIColor(hue: 0, saturation: 0, brightness: 1, alpha: 1).CGColor
  self.layer.addSublayer(l)
  return l
  }()
func body_path(bounds: CGRect) -> CGPath {
  let path = UIBezierPath()
  path.moveToPoint(CGPoint(x: 36*bounds.width/320 , y: 200.5*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 74*bounds.width/320 , y: 304.5*bounds.height/320), controlPoint1: CGPoint(x: 34*bounds.width/320 , y: 260.5*bounds.height/320), controlPoint2:CGPoint(x: 74*bounds.width/320 , y: 304.5*bounds.height/320))
  path.addLineToPoint(CGPoint(x: 160*bounds.width/320 , y: 304.5*bounds.height/320))
  path.addLineToPoint(CGPoint(x: 244.93*bounds.width/320 , y: 304.5*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 282.93*bounds.width/320 , y: 200.5*bounds.height/320), controlPoint1: CGPoint(x: 244.93*bounds.width/320 , y: 304.5*bounds.height/320), controlPoint2:CGPoint(x: 284.93*bounds.width/320 , y: 260.5*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 158.93*bounds.width/320 , y: 78.5*bounds.height/320), controlPoint1: CGPoint(x: 280.93*bounds.width/320 , y: 140.5*bounds.height/320), controlPoint2:CGPoint(x: 217.31*bounds.width/320 , y: 78.5*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 36*bounds.width/320 , y: 200.5*bounds.height/320), controlPoint1: CGPoint(x: 100.55*bounds.width/320 , y: 78.5*bounds.height/320), controlPoint2:CGPoint(x: 38*bounds.width/320 , y: 140.5*bounds.height/320))
  return path.CGPath
}
lazy var spot2: CAShapeLayer = {
  let l = CAShapeLayer()
  l.fillColor = UIColor(hue: 0, saturation: 0, brightness: 0, alpha: 1).CGColor
  self.layer.addSublayer(l)
  return l
  }()
func spot2_path(bounds: CGRect) -> CGPath {
  let path = UIBezierPath()
  path.moveToPoint(CGPoint(x: 45.06*bounds.width/320 , y: 262.63*bounds.height/320))
  path.addQuadCurveToPoint(CGPoint(x: 84.15*bounds.width/320 , y: 260.89*bounds.height/320), controlPoint: CGPoint(x: 84.15*bounds.width/320 , y: 275.09*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 89.32*bounds.width/320 , y: 218.57*bounds.height/320), controlPoint1: CGPoint(x: 84.15*bounds.width/320 , y: 246.7*bounds.height/320), controlPoint2:CGPoint(x: 64.66*bounds.width/320 , y: 218.57*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 44.51*bounds.width/320 , y: 173.89*bounds.height/320), controlPoint1: CGPoint(x: 113.98*bounds.width/320 , y: 218.57*bounds.height/320), controlPoint2:CGPoint(x: 63.15*bounds.width/320 , y: 174.52*bounds.height/320))
  path.addQuadCurveToPoint(CGPoint(x: 37.81*bounds.width/320 , y: 215.83*bounds.height/320), controlPoint: CGPoint(x: 25.86*bounds.width/320 , y: 173.26*bounds.height/320))
  path.addLineToPoint(CGPoint(x: 45.06*bounds.width/320 , y: 262.63*bounds.height/320))
  return path.CGPath
}
lazy var spot: CAShapeLayer = {
  let l = CAShapeLayer()
  l.fillColor = UIColor(hue: 0, saturation: 0, brightness: 0, alpha: 1).CGColor
  self.layer.addSublayer(l)
  return l
  }()
func spot_path(bounds: CGRect) -> CGPath {
  let path = UIBezierPath()
  path.moveToPoint(CGPoint(x: 174.17*bounds.width/320 , y: 237.78*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 208.46*bounds.width/320 , y: 223.23*bounds.height/320), controlPoint1: CGPoint(x: 183.89*bounds.width/320 , y: 237.78*bounds.height/320), controlPoint2:CGPoint(x: 196.74*bounds.width/320 , y: 215.98*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 234.73*bounds.width/320 , y: 244.72*bounds.height/320), controlPoint1: CGPoint(x: 220.19*bounds.width/320 , y: 230.48*bounds.height/320), controlPoint2:CGPoint(x: 234.73*bounds.width/320 , y: 230.83*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 218.19*bounds.width/320 , y: 281.88*bounds.height/320), controlPoint1: CGPoint(x: 234.73*bounds.width/320 , y: 258.61*bounds.height/320), controlPoint2:CGPoint(x: 227.91*bounds.width/320 , y: 276.02*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 162.79*bounds.width/320 , y: 283.96*bounds.height/320), controlPoint1: CGPoint(x: 208.46*bounds.width/320 , y: 287.74*bounds.height/320), controlPoint2:CGPoint(x: 174.17*bounds.width/320 , y: 295.73*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 174.17*bounds.width/320 , y: 237.78*bounds.height/320), controlPoint1: CGPoint(x: 151.41*bounds.width/320 , y: 272.2*bounds.height/320), controlPoint2:CGPoint(x: 164.45*bounds.width/320 , y: 237.78*bounds.height/320))
  return path.CGPath
}
lazy var armLeft: CAShapeLayer = {
  let l = CAShapeLayer()
  l.lineWidth = 8
  l.strokeColor = UIColor(hue: 0, saturation: 0, brightness: 0, alpha: 1).CGColor
  l.fillColor = UIColor(hue: 0, saturation: 0, brightness: 1, alpha: 1).CGColor
  self.layer.addSublayer(l)
  return l
  }()
func armLeft_path(bounds: CGRect) -> CGPath {
  let path = UIBezierPath()
  path.moveToPoint(CGPoint(x: 46*bounds.width/320 , y: 253*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 72*bounds.width/320 , y: 227*bounds.height/320), controlPoint1: CGPoint(x: 60.36*bounds.width/320 , y: 253*bounds.height/320), controlPoint2:CGPoint(x: 72*bounds.width/320 , y: 241.36*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 46*bounds.width/320 , y: 201*bounds.height/320), controlPoint1: CGPoint(x: 72*bounds.width/320 , y: 212.64*bounds.height/320), controlPoint2:CGPoint(x: 60.36*bounds.width/320 , y: 201*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 20*bounds.width/320 , y: 227*bounds.height/320), controlPoint1: CGPoint(x: 31.64*bounds.width/320 , y: 201*bounds.height/320), controlPoint2:CGPoint(x: 20*bounds.width/320 , y: 212.64*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 46*bounds.width/320 , y: 253*bounds.height/320), controlPoint1: CGPoint(x: 20*bounds.width/320 , y: 241.36*bounds.height/320), controlPoint2:CGPoint(x: 31.64*bounds.width/320 , y: 253*bounds.height/320))
  return path.CGPath
}
lazy var armRight: CAShapeLayer = {
  let l = CAShapeLayer()
  l.lineWidth = 8
  l.strokeColor = UIColor(hue: 0, saturation: 0, brightness: 0, alpha: 1).CGColor
  l.fillColor = UIColor(hue: 0, saturation: 0, brightness: 1, alpha: 1).CGColor
  self.layer.addSublayer(l)
  return l
  }()
func armRight_path(bounds: CGRect) -> CGPath {
  let path = UIBezierPath()
  path.moveToPoint(CGPoint(x: 274*bounds.width/320 , y: 253*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 300*bounds.width/320 , y: 227*bounds.height/320), controlPoint1: CGPoint(x: 288.36*bounds.width/320 , y: 253*bounds.height/320), controlPoint2:CGPoint(x: 300*bounds.width/320 , y: 241.36*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 274*bounds.width/320 , y: 201*bounds.height/320), controlPoint1: CGPoint(x: 300*bounds.width/320 , y: 212.64*bounds.height/320), controlPoint2:CGPoint(x: 288.36*bounds.width/320 , y: 201*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 248*bounds.width/320 , y: 227*bounds.height/320), controlPoint1: CGPoint(x: 259.64*bounds.width/320 , y: 201*bounds.height/320), controlPoint2:CGPoint(x: 248*bounds.width/320 , y: 212.64*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 274*bounds.width/320 , y: 253*bounds.height/320), controlPoint1: CGPoint(x: 248*bounds.width/320 , y: 241.36*bounds.height/320), controlPoint2:CGPoint(x: 259.64*bounds.width/320 , y: 253*bounds.height/320))
  return path.CGPath
}
lazy var head: CAShapeLayer = {
  let l = CAShapeLayer()
  l.lineWidth = 10
  l.strokeColor = UIColor(hue: 0, saturation: 0, brightness: 0, alpha: 1).CGColor
  l.fillColor = UIColor(hue: 0, saturation: 0, brightness: 1, alpha: 1).CGColor
  self.layer.addSublayer(l)
  return l
  }()
func head_path(bounds: CGRect) -> CGPath {
  let path = UIBezierPath()
  path.moveToPoint(CGPoint(x: 60*bounds.width/320 , y: 119*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 61.69*bounds.width/320 , y: 102.78*bounds.height/320), controlPoint1: CGPoint(x: 60*bounds.width/320 , y: 113.33*bounds.height/320), controlPoint2:CGPoint(x: 60.58*bounds.width/320 , y: 107.92*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 20*bounds.width/320 , y: 75*bounds.height/320), controlPoint1: CGPoint(x: 40.16*bounds.width/320 , y: 102.92*bounds.height/320), controlPoint2:CGPoint(x: 20*bounds.width/320 , y: 90.46*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 57*bounds.width/320 , y: 47*bounds.height/320), controlPoint1: CGPoint(x: 20*bounds.width/320 , y: 59.54*bounds.height/320), controlPoint2:CGPoint(x: 36.57*bounds.width/320 , y: 47*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 88.83*bounds.width/320 , y: 60.71*bounds.height/320), controlPoint1: CGPoint(x: 70.54*bounds.width/320 , y: 47*bounds.height/320), controlPoint2:CGPoint(x: 82.38*bounds.width/320 , y: 52.5*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 96.08*bounds.width/320 , y: 55.68*bounds.height/320), controlPoint1: CGPoint(x: 91.13*bounds.width/320 , y: 58.93*bounds.height/320), controlPoint2:CGPoint(x: 93.56*bounds.width/320 , y: 57.25*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 111*bounds.width/320 , y: 20*bounds.height/320), controlPoint1: CGPoint(x: 94.28*bounds.width/320 , y: 35.75*bounds.height/320), controlPoint2:CGPoint(x: 111*bounds.width/320 , y: 20*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 124.92*bounds.width/320 , y: 43.42*bounds.height/320), controlPoint1: CGPoint(x: 111*bounds.width/320 , y: 20*bounds.height/320), controlPoint2:CGPoint(x: 123.8*bounds.width/320 , y: 31.9*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 160*bounds.width/320 , y: 39*bounds.height/320), controlPoint1: CGPoint(x: 135.84*bounds.width/320 , y: 40.51*bounds.height/320), controlPoint2:CGPoint(x: 147.66*bounds.width/320 , y: 39*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 195.08*bounds.width/320 , y: 43.42*bounds.height/320), controlPoint1: CGPoint(x: 172.34*bounds.width/320 , y: 39*bounds.height/320), controlPoint2:CGPoint(x: 184.16*bounds.width/320 , y: 40.51*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 209*bounds.width/320 , y: 20*bounds.height/320), controlPoint1: CGPoint(x: 196.2*bounds.width/320 , y: 31.9*bounds.height/320), controlPoint2:CGPoint(x: 209*bounds.width/320 , y: 20*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 223.92*bounds.width/320 , y: 55.68*bounds.height/320), controlPoint1: CGPoint(x: 209*bounds.width/320 , y: 20*bounds.height/320), controlPoint2:CGPoint(x: 225.72*bounds.width/320 , y: 35.75*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 231.17*bounds.width/320 , y: 60.71*bounds.height/320), controlPoint1: CGPoint(x: 226.44*bounds.width/320 , y: 57.25*bounds.height/320), controlPoint2:CGPoint(x: 228.87*bounds.width/320 , y: 58.93*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 263*bounds.width/320 , y: 47*bounds.height/320), controlPoint1: CGPoint(x: 237.62*bounds.width/320 , y: 52.5*bounds.height/320), controlPoint2:CGPoint(x: 249.46*bounds.width/320 , y: 47*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 300*bounds.width/320 , y: 75*bounds.height/320), controlPoint1: CGPoint(x: 283.43*bounds.width/320 , y: 47*bounds.height/320), controlPoint2:CGPoint(x: 300*bounds.width/320 , y: 59.54*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 258.31*bounds.width/320 , y: 102.78*bounds.height/320), controlPoint1: CGPoint(x: 300*bounds.width/320 , y: 90.46*bounds.height/320), controlPoint2:CGPoint(x: 279.84*bounds.width/320 , y: 102.92*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 260*bounds.width/320 , y: 119*bounds.height/320), controlPoint1: CGPoint(x: 259.42*bounds.width/320 , y: 107.92*bounds.height/320), controlPoint2:CGPoint(x: 260*bounds.width/320 , y: 113.33*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 160*bounds.width/320 , y: 199*bounds.height/320), controlPoint1: CGPoint(x: 260*bounds.width/320 , y: 168.71*bounds.height/320), controlPoint2:CGPoint(x: 215.23*bounds.width/320 , y: 199*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 60*bounds.width/320 , y: 119*bounds.height/320), controlPoint1: CGPoint(x: 104.77*bounds.width/320 , y: 199*bounds.height/320), controlPoint2:CGPoint(x: 60*bounds.width/320 , y: 168.71*bounds.height/320))
  return path.CGPath
}
lazy var snout: CAShapeLayer = {
  let l = CAShapeLayer()
  l.lineWidth = 6
  l.strokeColor = UIColor(hue: 0, saturation: 0, brightness: 0, alpha: 1).CGColor
  l.fillColor = UIColor(hue: 0.94, saturation: 0.21, brightness: 0.92, alpha: 1).CGColor
  self.layer.addSublayer(l)
  return l
  }()
func snout_path(bounds: CGRect) -> CGPath {
  let path = UIBezierPath()
  path.moveToPoint(CGPoint(x: 142*bounds.width/320 , y: 163*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 112*bounds.width/320 , y: 187.5*bounds.height/320), controlPoint1: CGPoint(x: 125.43*bounds.width/320 , y: 163*bounds.height/320), controlPoint2:CGPoint(x: 112*bounds.width/320 , y: 173.97*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 142*bounds.width/320 , y: 212*bounds.height/320), controlPoint1: CGPoint(x: 112*bounds.width/320 , y: 201.03*bounds.height/320), controlPoint2:CGPoint(x: 125.43*bounds.width/320 , y: 212*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 160*bounds.width/320 , y: 207.1*bounds.height/320), controlPoint1: CGPoint(x: 148.75*bounds.width/320 , y: 212*bounds.height/320), controlPoint2:CGPoint(x: 154.99*bounds.width/320 , y: 210.18*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 178*bounds.width/320 , y: 212*bounds.height/320), controlPoint1: CGPoint(x: 165.01*bounds.width/320 , y: 210.18*bounds.height/320), controlPoint2:CGPoint(x: 171.25*bounds.width/320 , y: 212*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 208*bounds.width/320 , y: 187.5*bounds.height/320), controlPoint1: CGPoint(x: 194.57*bounds.width/320 , y: 212*bounds.height/320), controlPoint2:CGPoint(x: 208*bounds.width/320 , y: 201.03*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 178*bounds.width/320 , y: 163*bounds.height/320), controlPoint1: CGPoint(x: 208*bounds.width/320 , y: 173.97*bounds.height/320), controlPoint2:CGPoint(x: 194.57*bounds.width/320 , y: 163*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 160*bounds.width/320 , y: 167.9*bounds.height/320), controlPoint1: CGPoint(x: 171.25*bounds.width/320 , y: 163*bounds.height/320), controlPoint2:CGPoint(x: 165.01*bounds.width/320 , y: 164.82*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 142*bounds.width/320 , y: 163*bounds.height/320), controlPoint1: CGPoint(x: 154.99*bounds.width/320 , y: 164.82*bounds.height/320), controlPoint2:CGPoint(x: 148.75*bounds.width/320 , y: 163*bounds.height/320))
  return path.CGPath
}
lazy var nostrilLeft: CAShapeLayer = {
  let l = CAShapeLayer()
  l.fillColor = UIColor(hue: 0, saturation: 0, brightness: 0, alpha: 1).CGColor
  self.layer.addSublayer(l)
  return l
  }()
func nostrilLeft_path(bounds: CGRect) -> CGPath {
  let path = UIBezierPath()
  path.moveToPoint(CGPoint(x: 147*bounds.width/320 , y: 196*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 156*bounds.width/320 , y: 187*bounds.height/320), controlPoint1: CGPoint(x: 151.97*bounds.width/320 , y: 196*bounds.height/320), controlPoint2:CGPoint(x: 156*bounds.width/320 , y: 191.97*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 147*bounds.width/320 , y: 178*bounds.height/320), controlPoint1: CGPoint(x: 156*bounds.width/320 , y: 182.03*bounds.height/320), controlPoint2:CGPoint(x: 151.97*bounds.width/320 , y: 178*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 138*bounds.width/320 , y: 187*bounds.height/320), controlPoint1: CGPoint(x: 142.03*bounds.width/320 , y: 178*bounds.height/320), controlPoint2:CGPoint(x: 138*bounds.width/320 , y: 182.03*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 147*bounds.width/320 , y: 196*bounds.height/320), controlPoint1: CGPoint(x: 138*bounds.width/320 , y: 191.97*bounds.height/320), controlPoint2:CGPoint(x: 142.03*bounds.width/320 , y: 196*bounds.height/320))
  return path.CGPath
}
lazy var nostrilRight: CAShapeLayer = {
  let l = CAShapeLayer()
  l.fillColor = UIColor(hue: 0, saturation: 0, brightness: 0, alpha: 1).CGColor
  self.layer.addSublayer(l)
  return l
  }()
func nostrilRight_path(bounds: CGRect) -> CGPath {
  let path = UIBezierPath()
  path.moveToPoint(CGPoint(x: 173*bounds.width/320 , y: 196*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 182*bounds.width/320 , y: 187*bounds.height/320), controlPoint1: CGPoint(x: 177.97*bounds.width/320 , y: 196*bounds.height/320), controlPoint2:CGPoint(x: 182*bounds.width/320 , y: 191.97*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 173*bounds.width/320 , y: 178*bounds.height/320), controlPoint1: CGPoint(x: 182*bounds.width/320 , y: 182.03*bounds.height/320), controlPoint2:CGPoint(x: 177.97*bounds.width/320 , y: 178*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 164*bounds.width/320 , y: 187*bounds.height/320), controlPoint1: CGPoint(x: 168.03*bounds.width/320 , y: 178*bounds.height/320), controlPoint2:CGPoint(x: 164*bounds.width/320 , y: 182.03*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 173*bounds.width/320 , y: 196*bounds.height/320), controlPoint1: CGPoint(x: 164*bounds.width/320 , y: 191.97*bounds.height/320), controlPoint2:CGPoint(x: 168.03*bounds.width/320 , y: 196*bounds.height/320))
  return path.CGPath
}
lazy var eyeLeft: CAShapeLayer = {
  let l = CAShapeLayer()
  l.lineWidth = 6
  l.strokeColor = UIColor(hue: 0, saturation: 0, brightness: 0, alpha: 1).CGColor
  l.fillColor = UIColor(hue: 0, saturation: 0, brightness: 1, alpha: 1).CGColor
  self.layer.addSublayer(l)
  return l
  }()
func eyeLeft_path(bounds: CGRect) -> CGPath {
  let path = UIBezierPath()
  path.moveToPoint(CGPoint(x: 128*bounds.width/320 , y: 153*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 147*bounds.width/320 , y: 123.5*bounds.height/320), controlPoint1: CGPoint(x: 138.49*bounds.width/320 , y: 153*bounds.height/320), controlPoint2:CGPoint(x: 147*bounds.width/320 , y: 139.79*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 128*bounds.width/320 , y: 94*bounds.height/320), controlPoint1: CGPoint(x: 147*bounds.width/320 , y: 107.21*bounds.height/320), controlPoint2:CGPoint(x: 138.49*bounds.width/320 , y: 94*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 109*bounds.width/320 , y: 123.5*bounds.height/320), controlPoint1: CGPoint(x: 117.51*bounds.width/320 , y: 94*bounds.height/320), controlPoint2:CGPoint(x: 109*bounds.width/320 , y: 107.21*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 128*bounds.width/320 , y: 153*bounds.height/320), controlPoint1: CGPoint(x: 109*bounds.width/320 , y: 139.79*bounds.height/320), controlPoint2:CGPoint(x: 117.51*bounds.width/320 , y: 153*bounds.height/320))
  return path.CGPath
}
lazy var eyeBallLeft: CAShapeLayer = {
  let l = CAShapeLayer()
  l.fillColor = UIColor(hue: 0, saturation: 0, brightness: 0, alpha: 1).CGColor
  self.layer.addSublayer(l)
  return l
  }()
func eyeBallLeft_path(bounds: CGRect) -> CGPath {
  let path = UIBezierPath()
  path.moveToPoint(CGPoint(x: 128*bounds.width/320 , y: 151*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 142*bounds.width/320 , y: 137*bounds.height/320), controlPoint1: CGPoint(x: 135.73*bounds.width/320 , y: 151*bounds.height/320), controlPoint2:CGPoint(x: 142*bounds.width/320 , y: 144.73*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 128*bounds.width/320 , y: 123*bounds.height/320), controlPoint1: CGPoint(x: 142*bounds.width/320 , y: 129.27*bounds.height/320), controlPoint2:CGPoint(x: 135.73*bounds.width/320 , y: 123*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 114*bounds.width/320 , y: 137*bounds.height/320), controlPoint1: CGPoint(x: 120.27*bounds.width/320 , y: 123*bounds.height/320), controlPoint2:CGPoint(x: 114*bounds.width/320 , y: 129.27*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 128*bounds.width/320 , y: 151*bounds.height/320), controlPoint1: CGPoint(x: 114*bounds.width/320 , y: 144.73*bounds.height/320), controlPoint2:CGPoint(x: 120.27*bounds.width/320 , y: 151*bounds.height/320))
  return path.CGPath
}
lazy var eyeRight: CAShapeLayer = {
  let l = CAShapeLayer()
  l.lineWidth = 6
  l.strokeColor = UIColor(hue: 0, saturation: 0, brightness: 0, alpha: 1).CGColor
  l.fillColor = UIColor(hue: 0, saturation: 0, brightness: 1, alpha: 1).CGColor
  self.layer.addSublayer(l)
  return l
  }()
func eyeRight_path(bounds: CGRect) -> CGPath {
  let path = UIBezierPath()
  path.moveToPoint(CGPoint(x: 192*bounds.width/320 , y: 153*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 211*bounds.width/320 , y: 123.5*bounds.height/320), controlPoint1: CGPoint(x: 202.49*bounds.width/320 , y: 153*bounds.height/320), controlPoint2:CGPoint(x: 211*bounds.width/320 , y: 139.79*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 192*bounds.width/320 , y: 94*bounds.height/320), controlPoint1: CGPoint(x: 211*bounds.width/320 , y: 107.21*bounds.height/320), controlPoint2:CGPoint(x: 202.49*bounds.width/320 , y: 94*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 173*bounds.width/320 , y: 123.5*bounds.height/320), controlPoint1: CGPoint(x: 181.51*bounds.width/320 , y: 94*bounds.height/320), controlPoint2:CGPoint(x: 173*bounds.width/320 , y: 107.21*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 192*bounds.width/320 , y: 153*bounds.height/320), controlPoint1: CGPoint(x: 173*bounds.width/320 , y: 139.79*bounds.height/320), controlPoint2:CGPoint(x: 181.51*bounds.width/320 , y: 153*bounds.height/320))
  return path.CGPath
}
lazy var eyeBallRight: CAShapeLayer = {
  let l = CAShapeLayer()
  l.fillColor = UIColor(hue: 0, saturation: 0, brightness: 0, alpha: 1).CGColor
  self.layer.addSublayer(l)
  return l
  }()
func eyeBallRight_path(bounds: CGRect) -> CGPath {
  let path = UIBezierPath()
  path.moveToPoint(CGPoint(x: 192*bounds.width/320 , y: 151*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 206*bounds.width/320 , y: 137*bounds.height/320), controlPoint1: CGPoint(x: 199.73*bounds.width/320 , y: 151*bounds.height/320), controlPoint2:CGPoint(x: 206*bounds.width/320 , y: 144.73*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 192*bounds.width/320 , y: 123*bounds.height/320), controlPoint1: CGPoint(x: 206*bounds.width/320 , y: 129.27*bounds.height/320), controlPoint2:CGPoint(x: 199.73*bounds.width/320 , y: 123*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 178*bounds.width/320 , y: 137*bounds.height/320), controlPoint1: CGPoint(x: 184.27*bounds.width/320 , y: 123*bounds.height/320), controlPoint2:CGPoint(x: 178*bounds.width/320 , y: 129.27*bounds.height/320))
  path.addCurveToPoint(CGPoint(x: 192*bounds.width/320 , y: 151*bounds.height/320), controlPoint1: CGPoint(x: 178*bounds.width/320 , y: 144.73*bounds.height/320), controlPoint2:CGPoint(x: 184.27*bounds.width/320 , y: 151*bounds.height/320))
  return path.CGPath
}
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
