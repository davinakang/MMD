% Mark Choi 1641669 Bingni 419 section AA
% hw5 2/13/2016
clear all; close all;
%% section 1: Pull in the data
% load('Neonatal_Mortality.xlsx');
T = readtable('Neonatal_Mortality.xlsx',...
    'ReadRowNames',true,'Range','A1:CA226');

mortality = cell2mat(T{1:225,54:79});
country = cell2mat(T{1:225,1});

figure;
hist(country,mortality)
xlabel('1990-2015'); %column 54-79
ylabel('Neonatal Mortality per 1000');
title('');
%% section 4: Informational
% 7 hrs spent alone
% publish('hw4.m','pdf')