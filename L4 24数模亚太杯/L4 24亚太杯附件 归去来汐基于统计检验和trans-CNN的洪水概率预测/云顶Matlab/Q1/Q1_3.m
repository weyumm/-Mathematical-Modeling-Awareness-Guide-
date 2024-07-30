clc;clear;close all;
data = xlsread('斯皮尔曼相关性分析结果.xlsx');
factors = {'基础设施恶化','地形排水','季风强度','大坝质量','河流管理',...  
    '淤积','人口得分','气候变化','森林砍伐','滑坡','无效防灾','农业实践',...  
    '湿地损失','流域','政策因素','规划不足','城市化','侵蚀','排水系统','海岸脆弱性'};  
  
% 绘制箱线图  
figure;  
h = boxplot(data, 'Whisker', 1.5);  
set(findobj(gca,'tag','Box'), 'Color', [1 0.8 0.8]); % 将箱子的底色改为淡粉色  
set(findobj(gca,'type','line'),'Color','k','LineWidth',2); % 将箱线的颜色改为纯黑色并加粗  
set(gca, 'XTickLabel', factors, 'XTickLabelRotation', 45, 'FontSize', 10);  
xlabel('因素', 'FontSize', 12, 'FontWeight', 'bold');  
ylabel('与洪水发生概率的相关性', 'FontSize', 12, 'FontWeight', 'bold');  
title('不同因素与洪水发生概率的相关性分布', 'FontSize', 14, 'FontWeight', 'bold');  
set(gcf, 'color', [1 1 1]); % 设置背景色为白色  

% 标注数据点的位置和标签  
hold on;  
for i = 1:length(data)  
    x = 1; % x 坐标为因素的序号  
    y = data(i); % y 坐标为数据值  
    plot(x, y, 'ro', 'MarkerFaceColor', 'r'); % 以红色圆点形式标出数据点  
    text(x, y, num2str(factors{i}), 'HorizontalAlignment', 'right', 'VerticalAlignment', 'bottom');  
end  
set(gca,'xtick',[]); 
hold off; 