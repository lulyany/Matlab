%    for the parameters of cars:group, plate, length, width, current lane,
%and whether to break traffic law, to turn
%l=the length of the road
function car = carset(w,pb,pt,n)
    information = [];
    division = [0, sort(randperm(n-1, 3)), n];
    l = 6 * w;
    for i = 1 : 4
        for j = 1 : division(i+1) - division(i)%to randomly group the cars into four directions
            x = 0;
            y = 0;
            if i == 1
                x = l + 2 * j * w - 1.5 * w;
                y = w / 2;
            elseif i == 2
                x = -w / 2;
                y = l + 2 * j * w - 1.5 * w;
            elseif i == 3
                x = -(l + 2 * j * w - 1.5 * w);
                y = -w / 2;
            elseif i == 4
                x = w / 2;
                y = -(l + 2 * j * w - 1.5 * w);
            end
            r0 = rand;
            t  = 0;
            b  = 0;
            if pt > r0
                t = 1;
            elseif pt > r0/2
                t=-1;
            end
            if pb > rand
                b = 1;
            end
            carsize=[0.7,1,1.5];
            changesize=carsize(randi(3));
            information = [information, struct('group',i,'plate',j,'length',w*changesize,'width',w/2,'lane',i,'x',x,'y',y,'turn',t,'break',b,'crash',0)];
        end
    end
    
    car = plate(n, information);
end