clc;clear all;close all;
text = string(fileread('diary.tex'));

%extract keyname of the read documents
newStr = extractBetween(text,"\record{","}");