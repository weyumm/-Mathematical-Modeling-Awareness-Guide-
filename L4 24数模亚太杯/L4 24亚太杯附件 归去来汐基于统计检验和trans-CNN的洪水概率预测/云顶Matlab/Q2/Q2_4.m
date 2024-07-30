clc
clear
close all;
load('sensitivityAnalysis.mat')

figure;  
hold on;  
colors = parula(5); % 生成 5 种不同的颜色  
  
for i = 1:5  
    h = histogram(data(:,i), 'Normalization', 'probability', 'FaceColor', colors(i,:), 'EdgeColor', 'none', 'FaceAlpha', 1-0.15*i);  
    mu = mean(data(:,i));  
    sigma = std(data(:,i));   
end  
text(0.8*max(data(:,1)), 0.8*max(h.Values), sprintf('μ=%.2f\nσ=%.2f', mu, sigma), 'FontSize', 15, 'Color', colors(1,:));    
text(0.8*max(data(:,2)), 0.7*max(h.Values), sprintf('μ=%.2f\nσ=%.2f', mu, sigma), 'FontSize', 15, 'Color', colors(2,:)); 
text(0.8*max(data(:,3)), 0.6*max(h.Values), sprintf('μ=%.2f\nσ=%.2f', mu, sigma), 'FontSize', 15, 'Color', colors(3,:)); 
text(0.8*max(data(:,4)), 0.5*max(h.Values), sprintf('μ=%.2f\nσ=%.2f', mu, sigma), 'FontSize', 15, 'Color', colors(4,:)); 
text(0.8*max(data(:,5)), 0.4*max(h.Values), sprintf('μ=%.2f\nσ=%.2f', mu, sigma), 'FontSize', 15, 'Color', colors(5,:)); 
title('Distribution of Data');  
xlabel('Value');  
ylabel('Probability');  
grid on;  
  
legend('原得分', '变化1', '变化2', '变化3', '变化4', 'Location', 'best');  
set(gca, 'FontSize', 15);  