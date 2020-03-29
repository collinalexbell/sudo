package design

import net.joewing.scalacad._
import net.joewing.scalacad.primitives._
import net.joewing.scalacad.parts.Threads

import net.joewing.scalacad.io
import net.joewing.scalacad.io.AwtRenderer

object Screw {
  val obj = Threads(4, 10, 4, 0.75, .075)
  def main(args: Array[String]) = {
    AwtRenderer.show(obj)
  }
}
