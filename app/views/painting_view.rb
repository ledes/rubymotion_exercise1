class PaintingView < UIView
  attr_accessor :painting

  def drawRect(rectangle)
    super

    return if painting.nil?

    painting.strokes.each do |stroke|
      draw_stroke(stroke)
    end
  end

  def draw_stroke(stroke)

    context = UIGraphicsGetCurrentContext()
    CGContextSetStrokeColorWithColor(context, stroke.color.CGColor)
    CGContextSetLineWidth(context, 20.0)
    CGContextSetLineCap(context, KCGLineCapRound)
    CGContextSetLineJoin(context, KCGLineJoinRound)

    CGContextMoveToPoint(context, stroke.start_point.x, stroke.start_point.y)

    stroke.points.drop(1).each do |point|
      CGContextAddLineToPoint(context, point.x, point.y)
    end

    CGContextStrokePath(context);
  end
end
