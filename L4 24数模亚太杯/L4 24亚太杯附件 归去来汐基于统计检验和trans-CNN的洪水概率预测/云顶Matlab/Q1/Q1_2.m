clc;clear;close all;
data = xlsread('斯皮尔曼相关性分析结果.xlsx');

factors = {'基础设施恶化','地形排水','季风强度','大坝质量','河流管理',...  
    '淤积','人口得分','气候变化','森林砍伐','滑坡','无效防灾','农业实践',...  
    '湿地损失','流域','政策因素','规划不足','城市化','侵蚀','排水系统','海岸脆弱性'};  
  
correlation = data; % 你的相关性数据  
  
% 绘制折线图  
figure;  
h = plot(correlation, '-o', 'LineWidth', 1.5, 'MarkerSize', 8, 'MarkerFaceColor', 'b', 'Color', 'r');  
xticks(1:20);  
xticklabels(factors);  
xtickangle(45);  
xlabel('指标', 'FontSize', 12, 'FontWeight', 'bold');  
ylabel('与洪水发生概率的相关性', 'FontSize', 12, 'FontWeight', 'bold');  
title('不同因素与洪水发生概率的相关性', 'FontSize', 14, 'FontWeight', 'bold');  
grid on;  
set(gca, 'TickDir', 'out');  
set(gca, 'LineWidth', 1.5);  
set(gca, 'FontName', '宋体');  
set(gca, 'FontSize', 10);  
box off;
