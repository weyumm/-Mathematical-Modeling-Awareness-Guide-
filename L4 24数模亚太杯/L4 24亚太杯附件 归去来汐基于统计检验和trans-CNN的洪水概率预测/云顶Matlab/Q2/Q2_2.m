clc
clear
d=xlsread('判断矩阵1.xlsx');
data=d;


string_name={'基础设施恶化','地形排水','季风强度','大坝质量','河流管理',...  
    '淤积','人口得分','气候变化','森林砍伐','滑坡','无效防灾','农业实践',...  
    '湿地损失','流域','政策因素','规划不足','城市化','侵蚀','排水系统','海岸脆弱性'};
xvalues = string_name;
yvalues = string_name;
%h=heatmap(xvalues,yvalues,data, 'FontSize',10, 'FontName','宋体');
%color = ncl_colormap('cmocean_algae');
% color = [250/255,127/255,111/255;
%     130/255,176/255,210/255;
%     190/255,184/255,220/255;
%     231/255,218/255,210/255;
%     153/255,153/255,153/255];
%colormap(color)
% 使用 MATLAB 预定义的 'parula' 颜色映射
color = sky;

% 使用 'parula' 颜色映射绘制热图
h = heatmap(xvalues, yvalues, data, 'FontSize', 10, 'FontName', '宋体');
colormap(color);

set(gcf,'Color',[1 1 1])
function color = ncl_colormap(colorname)

temp = import_ascii([colorname '.rgb']);
temp(1:2) = [];
temp = split(temp,'#');
temp = temp(:,1);
% color = deblank(color);
temp = strtrim(temp);
temp = regexp(temp, '\s+', 'split');
for i=1:size(temp,1)
    color(i,:) = str2double(temp{i});    
end
color = color/255;
end

%function ascii = import_ascii(file_name)
%i = 1;
%fid = fopen(file_name);
%while feof(fid) ~= 1
 %   tline = fgetl(fid);
  %  ascii{i,1} = tline; i = i + 1;
%end
%fclose(fid);
%end

