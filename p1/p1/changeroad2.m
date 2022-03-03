function [allcar,ran]=changeroad2(lane,i,allcar,w,ran,pb)
                       allcar(i).y = allcar(i).y - (-1)^mod(lane,3);
                    if (allcar(i).break == 1) && (ran <= pb)
                        ran = 0;
                        if crash(allcar, w) == 1
                            allcar(i).crash = 1;
                        end
                    elseif (crash(allcar, w) == 1)
                        allcar(i).y = allcar(i).y + (-1)^mod(lane,3);
                    end
                    if (allcar(i).turn == 1) && (allcar(i).y == ((-1)^mod(lane,3))*w/2)
                        allcar(i).lane = ( -1 + lane );
                    elseif (allcar(i).turn == -1) && (allcar(i).y == (-(-1)^mod(lane,3))*w/2)
                        allcar(i).lane = ( 5 - lane );
                        allcar(i).turn = 0;
                    end
end


