net = patternnet(15);

[net, tr] = train(net, nnData, nnOutputData);
nntraintool