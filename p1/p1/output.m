function output(allcar,result,n)
if result == 1
        fprintf('You win!!!\n');
    else
        fprintf('Crash!!You lose!!!To win the game,try smaller pb and pt!!!\n');
end
show=[];
    for i = 1 : n
        if allcar(i).crash == 1
            show=[show,allcar(i).plate,' '];
        end
    end
    disp(show);
end