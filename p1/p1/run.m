% This function is used to let all the cars move. If the player wins, result = 1. If a crash happens, result = 0.

function [allcar,result] = run(n, w, g, o, r, pb, allcar)
    time = 0;
    timecycle = g + o + r + o;
    l = 6 * w;%a suitble length for road
    while (crash(allcar, w) == 0)
        clf;
        axis([-l,l,-l,l]);
        roaddrawer(w);
        time = time + 1;
        status = 0;
        if rem(time - 1, timecycle) + 1 <= g  
            status = 1;
        elseif rem(time - 1, timecycle) + 1 <= g + o
            status = 2;
        elseif rem(time - 1, timecycle) + 1 <= g + o + r
            status = 3;
        else
            status = 2;
        end
        lightcontrol(status,w)
        for i = 1 : n
            allcar_temp = allcar;
            ran = rand;
            lane=allcar(i).lane;
            if (allcar(i).x >= -w) && (allcar(i).x <= w) && (allcar(i).y >= -w) && (allcar(i).y <= w)

%judge whether in the centre of the road
               
                switch lane
                    case 1
                        [allcar,ran]=changeroad(lane,i,allcar,w,ran,pb);
                    case 2
                        [allcar,ran]=changeroad2(lane,i,allcar,w,ran,pb);
                    case 3
                        [allcar,ran]=changeroad(lane,i,allcar,w,ran,pb);
                    case 4
                        [allcar,ran]=changeroad2(lane,i,allcar,w,ran,pb);
                end
           
            elseif status == 1
                switch lane 
                case 1
                    if crash(allcar, w) ~= 1
                        allcar(i).x = allcar(i).x - 1;
                    end
                case 2
                    if allcar(i).break == 0
                        temp = min([1, abs(allcar(i).y - 1.5*w)]);
                        if crash(allcar, w) ~= 1
                        allcar(i).y = allcar(i).y - temp;
                        end
                    else
                        if crash(allcar, w) ~= 1
                        allcar(i).y = allcar(i).y - 1;
                        end
                        if (allcar_temp(i).y > w) && (allcar(i).y - allcar(i).length / 2 < w)
                            allcar(i).crash = 1;
                        end
                    end
                case 3
                    if crash(allcar, w) ~= 1
                    allcar(i).x = allcar(i).x + 1;
                    end
                case 4
                    if allcar(i).break == 0
                        temp = min([1, abs(-allcar(i).y - 1.5*w)]);
                        if crash(allcar, w) ~= 1
                        allcar(i).y = allcar(i).y + temp;
                        end
                    else
                        if crash(allcar, w) ~= 1
                        allcar(i).y = allcar(i).y + 1;
                        end
                        if (allcar_temp(i).y < -w) && (allcar(i).y + allcar(i).length / 2 > -w)
                            allcar(i).crash = 1;
                        end
                    end
                end
            elseif status == 2
                switch lane
                    case 1
                    if allcar(i).break == 0
                        temp = min([1, abs(allcar(i).x - 1.5*w)]);
                        if crash(allcar, w) ~= 1
                        allcar(i).x = allcar(i).x - temp;
                        end
                    else
                        if crash(allcar, w) ~= 1
                        allcar(i).x = allcar(i).x - 1;
                        end
                        if (allcar_temp(i).x > w) && (allcar(i).x - allcar(i).length / 2 < w)
                            allcar(i).crash = 1;
                        end
                    end
                    case 2
                    if allcar(i).break == 0
                        temp = min([1, abs(allcar(i).y - 1.5*w)]);
                        if crash(allcar, w) ~= 1
                        allcar(i).y = allcar(i).y - temp;
                        end
                    else
                        if crash(allcar, w) ~= 1
                        allcar(i).y = allcar(i).y - 1;
                        if (allcar_temp(i).y > w) && (allcar(i).y - allcar(i).length / 2 < w)
                            allcar(i).crash = 1;
                        end
                        end
                    end
                    case 3
                    if allcar(i).break == 0
                        temp = min([1, abs(-allcar(i).x - 1.5*w)]);
                        if crash(allcar, w) ~= 1
                        allcar(i).x = allcar(i).x + temp;
                        end
                    else
                        if crash(allcar, w) ~= 1
                        allcar(i).x = allcar(i).x + 1;
                        end
                        if (allcar_temp(i).x < -w) && (allcar(i).x + allcar(i).length / 2 > -w)
                            allcar(i).crash = 1;
                        end
                    end
                    case 4
                    if allcar(i).break == 0
                        temp = min([1, abs(-allcar(i).y - 1.5*w)]);
                        if crash(allcar, w) ~= 1
                        allcar(i).y = allcar(i).y + temp;
                        end
                    else
                        if crash(allcar, w) ~= 1
                        allcar(i).y = allcar(i).y + 1;
                        end
                        if (allcar_temp(i).y < -w) && (allcar(i).y + allcar(i).length / 2 > -w)
                            allcar(i).crash = 1;
                        end
                    end
                end    
            elseif status == 3
                switch lane 
                    case 2
                    if crash(allcar, w) ~= 1
                        allcar(i).y = allcar(i).y - 1;
                    end
                    case 1
                    if allcar(i).break == 0
                        temp = min([1, abs(allcar(i).x - 1.5*w)]);
                        if crash(allcar, w) ~= 1
                        allcar(i).x = allcar(i).x - temp;
                        end
                    else
                        if crash(allcar, w) ~= 1
                        allcar(i).x = allcar(i).x - 1;
                        end
                        if (allcar_temp(i).x > w) && (allcar(i).x - allcar(i).length / 2 < w)
                            allcar(i).crash = 1;
                        end
                    end
                    case 4
                    if crash(allcar, w) ~= 1
                        allcar(i).y = allcar(i).y + 1;
                    end
                    case 3
                    if allcar(i).break == 0
                        temp = min([1, abs(-allcar(i).x - 1.5*w)]);
                        if crash(allcar, w) ~= 1
                        allcar(i).x = allcar(i).x + temp;
                        end
                    else
                        if crash(allcar, w) ~= 1
                        allcar(i).x = allcar(i).x + 1;
                        end
                        if (allcar_temp(i).x < -w) && (allcar(i).x + allcar(i).length / 2 > -w)
                            allcar(i).crash = 1;
                        end
                    end
                end
            end
            displaycar(allcar, i);
        end
        if finish(n,allcar,w) == 1
            result = 1;
            return;
        end
        pause(0.6);
        
    end
    result = 0;
end





