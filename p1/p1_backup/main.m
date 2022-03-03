clear,clc;
close all;
w = input('Please input the width of the road(how many units):');
g = input('Input the time for green light:');
o = input('Input the time for orange light:');
r = input('Input the time for red light(must eqaul the green light):');
p = input('Input the probability that a car breaks the law:');
t = input('Input the probability that a car turns left or right:');
w = w/2;%one direction on each road's width
%while true
roaddrawer(w);
lightcontrol(w,g,o,r);