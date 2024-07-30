clc;clear;close all;
load('train.mat')
data(:,1) = [];

% 初始化存储相关系数的向量  
rho = zeros(1, 20);  
  
% 计算斯皮尔曼相关系数  
for i = 1:20  
    rho(i) = corr(data(:,i), data(:,21), 'Type', 'Spearman');  
end  
% 计算皮尔逊相关系数  
rho2 = corr(data(:,1:20), data(:,21), 'Type', 'Pearson');  

% 显示相关系数  
disp(rho); 
disp(rho2);   