labelPC = zeros(3, 1026);
for i=1:1026
    if label(i) == 1
        labelPC(1, i) = 1;
    elseif label(i) == 0
        labelPC(2, i) = 1;
    else
        labelPC(3, i) = 1;
    end
end