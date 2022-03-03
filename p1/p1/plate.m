%the two functions are to generate plates and attach them to cars
function information = plate(n, information)
    for i = 1 : n
        information(i).plate = generateplate();        
    end
end

function plate=generateplate()
    plate=[];
    letter=['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'];
    number=['1','2','3','4','5','6','7','8','9','0'];
    plate = [plate,letter(randi(24)),' ',number(randi(10)),number(randi(10)),letter(randi(24)),letter(randi(24)),number(randi(10))];
end    