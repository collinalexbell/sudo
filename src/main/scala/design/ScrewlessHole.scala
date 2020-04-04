package design

import net.joewing.scalacad._
import net.joewing.scalacad.primitives._
import net.joewing.scalacad.parts.Threads

import net.joewing.scalacad.io
import net.joewing.scalacad.io.AwtRenderer

object ScrewlessHole {
  val hole = Cylinder(15, 4.2, 4.2, 30).centered
  val box = Cube(12, 12, 12).centered
  def drill(obj: Primitive[ThreeDimensional]) =
    obj - hole
  val obj = drill(box)
  def main(args: Array[String]) = {
    AwtRenderer.show(obj)
  }
}
