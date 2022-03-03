%w-the  width of the road
%g-the time for green light
%o-the time for orange light
%r-the time for red light(must eqaul the green light)
%pb-the probability that a car breaks the law
%pt-the probability that a car turns left or right
%n-the number of cars on each direction of one road
clear,clc;
clf;
close all;
difficulty = input('Please input difficulty level (1 - easy, 2 - middle, 3 - hard, 0 - do it yourself):');
    switch difficulty 
        case 1
             w = 4; g = 6; o = 2; r = 6; pb = 0.3; pt = 0.3; n = 5;
        case 2
             w = 3; g = 8; o = 3; r = 8; pb = 0.3; pt = 0.4;n = 10;
        case 3
             w = 4; g = 12; o = 3; r = 12; pb = 0.9; pt = 0.6; n = 20;
        case 0
            w = input('Please input the width of the road(how many units)(1-4):');
            g = input('Input the time for green light(1-20):');
            o = input('Input the time for orange light(1-20):');
            r = input('Input the time for red light(must eqaul the green light):');
            pb = input('Input the probability that a car breaks the law(0-1):');
            pt = input('Input the probability that a car turns left or right(0-1):');
            n = input('The number of cars on each direction of one road(1-20)');
        otherwise
            disp('wrong input,please try again');
    end
w = w/2;%one direction on each road's width
allcar=carset(w,pb,pt,n);%set the information of all cars
[allcar,result]=run(n, w, g, o, r, pb, allcar);
output(allcar,result,n);