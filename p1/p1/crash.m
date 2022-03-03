% This function is used to judge whether a crash happens. 
% If it happens, the function will return 1. Otherwise, the function will return 0.

function flag = crash(allcar, w) 
    flag = 0;
    i=1;
    while i <= size(allcar,2)%to check how many cars, avoiding using n
        for j = 1 : size(allcar,2)
            if i == j
                continue;
            else
                if abs(allcar(i).y-allcar(j).y)<w && abs(allcar(i).x-allcar(j).x)<w%to see whether to crash
                    flag = 1;
                    break;
                end
            end
        end
        i = i + 1;
    end
end