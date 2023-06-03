void drawBackground() {
  // ******************** ocean ********************
  for (int i = 0; i< 200; i++) {
    stroke(lerpColor(color(150, 255, 230), color(0, 100, 190), i/200.));
    line(0, i, 800, i);
  }

  // ******************** sol ********************
  noStroke();
  fill(0, 100, 190);
  bezier(0, 200, 278, 232, 503, 184, 800, 200);

  // ******************** rocher ********************
  strokeWeight(0.1);
  stroke(0);
  fill(164, 107, 176);
  bezier(800, 170, 715, 113, 442, 233, 800, 210);

  // ******************** route ********************
  strokeWeight(3);
  stroke(0);
  fill(82, 97, 116);
  beginShape();
  vertex(0, 550);
  bezierVertex(176, 540, 739, 560, 810, 550);
  vertex(810, 810);
  vertex(0, 810);
  endShape();
}

void drawBusStop() {
  rectMode(CORNER);
  
  // ******************** pied panneau ********************
  strokeWeight(1);
  fill(93, 68, 64);
  rect(144, 190, 10, 300);
  
  // ******************** panneau ********************
  fill(248, 223, 8);
  quad(149, 220, 49, 120, 149, 20, 249, 120);
  noFill();
  strokeWeight(2);
  quad(149, 210, 59, 120, 149, 30, 239, 120);

  // ******************** bonhomme gauche ********************
  strokeWeight(1);
  fill(0);
  circle(114, 83, 15);
  beginShape();
  vertex(122, 92);
  vertex(102, 127);
  vertex(95, 122);
  vertex(86, 136);
  vertex(105, 148);
  vertex(113, 134);
  vertex(108, 132);
  vertex(110, 128);
  vertex(109, 124);
  vertex(119, 111);
  vertex(128, 126);
  vertex(126, 134);
  vertex(123, 141);
  vertex(127, 168);
  vertex(134, 168);
  vertex(129, 139);
  vertex(135, 134);
  vertex(146, 141);
  vertex(164, 131);
  vertex(161, 127);
  vertex(149, 134);
  vertex(136, 104);
  vertex(150, 106);
  vertex(152, 101);
  vertex(122, 92);
  endShape();

  // ******************** bonhomme droite ********************
  circle(180, 90, 14);
  quad(185, 96, 194, 102, 195, 99, 187, 94);
  quad(186, 101, 189, 103, 193, 95, 190, 93 );
  beginShape();
  vertex(181, 104);
  vertex(165, 112);
  vertex(159, 105);
  vertex(155, 110);
  vertex(161, 118);
  vertex(173, 113);
  vertex(176, 124);
  vertex(169, 148);
  vertex(172, 169);
  vertex(178, 167);
  vertex(175, 149);
  vertex(179, 138);
  vertex(184, 137);
  vertex(186, 145);
  vertex(206, 140);
  vertex(204, 135);
  vertex(190, 138);
  vertex(185, 124);
  vertex(188, 113);
  vertex(194, 120);
  vertex(198, 119);
  vertex(192, 109);
  vertex(181, 104);
  endShape();
}

void drawGary() {
  // ******************** corps bleu ********************
  stroke(0);
  fill(132, 211, 244);
  beginShape();
  vertex(644, 753);
  vertex(622, 732);
  bezierVertex(607, 735, 620, 710, 621, 723);
  bezierVertex(613, 715, 650, 700, 662, 735);
  vertex(765, 734); 
  bezierVertex(776, 739, 759, 743, 759, 743);
  bezierVertex(741, 745, 759, 760, 735, 761);
  bezierVertex(708, 757, 709, 776, 685, 768);
  bezierVertex(669, 754, 651, 772, 647, 765);
  bezierVertex(640, 763, 632, 753, 644, 753);
  endShape();

  // ******************** corps vert ********************
  noStroke();
  fill(201, 237, 127);
  beginShape();
  vertex(755, 735);
  vertex(765, 735); 
  bezierVertex(776, 739, 759, 743, 759, 743);
  bezierVertex(741, 745, 759, 760, 735, 761);
  bezierVertex(708, 757, 709, 776, 685, 768);
  bezierVertex(669, 754, 651, 772, 647, 765);
  bezierVertex(640, 763, 635, 755, 644, 753);
  bezierVertex(723, 761, 734, 759, 755, 735);
  endShape();

  // ******************** bouche ********************
  stroke(1);
  strokeWeight(4);
  point(619, 726);

  // ******************** coquille fond ********************
  strokeWeight(1);
  fill(255, 148, 136);
  beginShape();
  vertex(709, 751);
  bezierVertex(628, 737, 679, 722, 675, 735);
  bezierVertex(596, 612, 784, 608, 740, 730);
  bezierVertex(769, 727, 717, 758, 709, 751);
  endShape();

  // ******************** coquille motif spirale ********************
  fill(180, 45, 25);
  beginShape();
  vertex(717, 752);
  bezierVertex(670, 705, 735, 640, 735, 713);
  bezierVertex(725, 740, 704, 708, 719, 704);
  bezierVertex(712, 706, 725, 730, 730, 710);
  bezierVertex(740, 675, 679, 677, 727, 748);
  endShape();

 // ******************** coquille taches ********************
  fill(139, 108, 225);

  pushMatrix();
  translate(688, 714);
  rotate(-PI/6);
  ellipse(0, 0, 5, 10);
  popMatrix();

  pushMatrix();
  translate(691, 684);
  rotate(PI/6);
  ellipse(0, 0, 5, 10);
  popMatrix();

  pushMatrix();
  translate(707, 662);
  rotate(PI/2);
  ellipse(0, 0, 10, 15);
  popMatrix();

  pushMatrix();
  translate(730, 672);
  rotate(-PI/6);
  ellipse(0, 0, 5, 10);
  popMatrix();

  ellipse(741, 700, 5, 10);

  // ******************** yeux tige ********************
  fill(132, 211, 244);
  
  beginShape();
  vertex(639, 715);
  vertex(655, 653);
  vertex(660, 654);
  vertex(644, 719);
  endShape();  
  
  beginShape();
  vertex(630, 713);
  vertex(635, 648);
  vertex(640, 648);
  vertex(635, 713);
  endShape();

  // ******************** yeux globes *****************************
  fill(208, 241, 152);
  circle(639, 639, 30);
  circle(660, 644, 30);

  // ******************** yeux iris *****************************
  fill(209, 53, 31);
  circle(638, 638, 15);
  circle(654, 641, 15);

  // ******************** yeux pupille *****************************
  fill(0);
  circle(638, 638, 5);
  circle(654, 641, 5);
}

void drawStan() {  
  // ******************** pantalon ********************
  rectMode(CENTER);
  stroke(0);
  strokeWeight(1);
  fill(75, 96, 177);
  rect(400, 465, 170, 35);

  // ******************** manteau ********************
  fill(158, 94, 82);
  beginShape();
  vertex(310, 452);
  bezierVertex(350, 468, 450, 468, 490, 452);
  vertex(490, 430);
  vertex(515, 430);
  bezierVertex(515, 390, 475, 340, 475, 340);
  vertex(325, 340);
  bezierVertex(290, 365, 285, 430, 285, 430);
  vertex(310, 430);
  vertex(310, 452);
  endShape();
  
  fill(154, 92, 79);
  bezier(317, 425, 320, 400, 330, 385, 330, 385);
  bezier(483, 425, 480, 400, 470, 385, 470, 385);
  
  // ******************** manteau fermeture ********************
  strokeWeight(4);
  line(400, 382, 400, 458);

  strokeWeight(8);
  point(385, lerp(382, 458, 0.82));
  point(385, lerp(382, 458, 0.45));
  point(385, lerp(382, 458, 0.15));

  // ******************** manteau ourlet ********************
  strokeWeight(1);
  fill(219, 28, 62);
  beginShape();
  vertex(475, 345);
  bezierVertex(464, 379, 400, 380, 400, 380);
  bezierVertex(374, 371, 461, 368, 475, 345);
  endShape();

  beginShape();
  vertex(325, 345);
  bezierVertex(325, 345, 336, 379, 400, 380);
  bezierVertex(399, 365, 350, 372, 325, 345);
  endShape();

  // ******************** tete ********************
  fill(253, 221, 182);
  ellipse(400, 250, 240, 240);
  
  // ******************** yeux ********************
  fill(255);
  pushMatrix();
  translate(360, 265);
  rotate(PI/5);
  ellipse(0, 0, 70, 80);
  popMatrix();

  pushMatrix();
  translate(440, 265);
  rotate(-PI/5);
  ellipse(0, 0, 70, 80);
  popMatrix();

  strokeWeight(5);
  point(380, 265);
  point(420, 265);

  // ******************** bouche ********************
  strokeWeight(1);
  fill(0);
  triangle(400-30, 320, 400+30, 320, 400, 320+30);
  fill(255);
  rectMode(CORNERS);
  rect(386, 320, 399, 330);
  rect(401, 320, 414, 330);
  quad(401-30, 320, 384, 320, 384, 330, 380, 330);
  quad(416, 320, 399+30, 320, 420, 330, 416, 330);

  // ******************** bonet fond ********************
  fill(75, 96, 177);
  arc(400, 250, 240, 240, 13*PI/12, 23*PI/12, OPEN);

  // ******************** bonet ponpon ********************
  rectMode(CENTER);
  pushMatrix();
  translate(width/2, 130);
  fill(219, 28, 62);
  for (int i = 1; i < 8; i++) {
    rotate(PI/6);
    rect(0, 0, 60, 8, 500);
  }
  popMatrix();
  
  // ******************** bonet ourlet ********************
  fill(219, 28, 62);
  strokeWeight(1);
  beginShape();
  vertex(278, 240);
  vertex(278, 220);
  bezierVertex(340, 200, 460, 200, 522, 220);
  vertex(522, 240);
  bezierVertex(460, 220, 340, 220, 278, 240);
  endShape();

  // ******************** mains ********************
  strokeWeight(0.1);
  fill(219, 28, 62);
  circle(497, 430, 40);
  circle(303, 430, 40);

  fill(219, 28, 62);
  circle(483, 425, 15);
  circle(317, 425, 15);

  // ******************** pieds ********************
  strokeWeight(1);
  fill(0);
  beginShape();
  vertex(303, 487);
  bezierVertex(303, 473, 400, 473, 400, 478);
  bezierVertex(400, 473, 497, 473, 497, 487);
  vertex(303, 487);
  endShape();
}

void setup() {
  size(800, 800);
  
  drawBackground();
  drawBusStop();
  drawGary();
  drawStan();
}
