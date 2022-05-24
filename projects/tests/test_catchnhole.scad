use <catchnhole/catchnhole.scad>;


difference () {
  translate([-5, -5, 0]) cube([10, 10, 10]);

  // Draw a nutcatch parallel to bolt shaft:
  nutcatch_parallel("M3");
  // Draw a bolt gripping the nutcatch:
  bolt("M3", length = 10);

  // Or, draw a nutcatch sidecut into the part:
  translate([0, 0, 4]) {
    nutcatch_sidecut("M3");
    // Draw a bolt gripping the nutcatch:
    bolt("M3", length = 6);
  }
}