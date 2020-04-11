package design

import net.joewing.scalacad._
import net.joewing.scalacad.primitives._
import net.joewing.scalacad.parts.Threads

import net.joewing.scalacad.io
import net.joewing.scalacad.io.AwtRenderer

object ScrewHole {
  val threads = Threads(4.5, 30, 12, 0.75, .075)
  val box = Cube(12, 12, 12)
  def drill(obj: Primitive[ThreeDimensional]) =
    obj - Translate(threads, 6, 6, -10)
  val obj = drill(box)
  def main(args: Array[String]) = {
    AwtRenderer.show(obj)
  }
}
