function [allcar,ran]=changeroad(lane,i,allcar,w,ran,pb)
                        allcar(i).x = allcar(i).x + (-1)^mod(lane,3);
                    if (allcar(i).break == 1) && (ran <= pb)
                        ran = 0;
                        if crash(allcar, w) == 1
                            allcar(i).crash = 1;
                        end
                    elseif (crash(allcar, w) == 1)
                        allcar(i).x = allcar(i).x  - (-1)^mod(lane,3);
                    end
                    if (allcar(i).turn == 1) && (allcar(i).x == (-(-1)^mod(lane,3))*w/2)
                        allcar(i).lane = ( 5 - lane );
                    elseif (allcar(i).turn == -1) && (allcar(i).x == ((-1)^mod(lane,3)*w/2))
                        allcar(i).lane = ( lane + 1 );
                        allcar(i).turn = 0;
                    end
end