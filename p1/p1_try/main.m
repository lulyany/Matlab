sclc,clear;
w=input('Please input the width of the road(how many units):');
g=input('Input the time for green light:');
o=input('Input the time for orange light:');
r=input('Input the time for red light :');
w=w/2;
global w g o r ;
roaddrawer();
lightcontrol();