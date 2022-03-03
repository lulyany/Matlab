function flag = finish(n,allcar,w)
    flag = 1;
    for i = 1 : n
        if (allcar(i).x >= -6*w) && (allcar(i).x <= 6*w) && (allcar(i).y >= -6*w) && (allcar(i).y <= 6*w)
            flag = 0;
            break;
        end
    end
end