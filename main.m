clear; close all; clc;

M = 2;
data = randi([0  M - 1], 500, 1);
modSig = pammod(data, M, pi);


sps = 4;
txfilter = comm.RaisedCosineTransmitFilter('OutputSamplesPerSymbol', sps);


txSig = txfilter(modSig);

figure, plot(real(txSig));

eyediagram(real(txSig(100 : end)), 2 * sps);
