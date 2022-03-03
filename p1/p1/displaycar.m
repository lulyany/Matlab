function displaycar(allcar,i) 
    hold on;
    color = '';
    switch allcar(i).group
        case 1
            color = 'b';
        case 2
            color = 'y';
        case 3
            color = 'm';
        case 4
            color = 'c';
    end
    if (allcar(i).lane == 1) || (allcar(i).lane == 3)
        rectangle('Position',[allcar(i).x-allcar(i).length/2,allcar(i).y-allcar(i).width/2,allcar(i).length,allcar(i).width],'edgecolor','k','facecolor',color);
    elseif (allcar(i).lane == 2) || (allcar(i).lane == 4)
        rectangle('Position',[allcar(i).x-allcar(i).width/2,allcar(i).y-allcar(i).length/2,allcar(i).width,allcar(i).length],'edgecolor','k','facecolor',color);
    end
    hold off;
end