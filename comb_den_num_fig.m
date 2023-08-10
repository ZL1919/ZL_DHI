% comb_den_num_fig.m
% Author: Zhangsheng Lian
% put 2 figures at different P location into the same figure
% use fictional month for a different P location here
% ref: https://www.mathworks.com/matlabcentral/answers/101806-how-can-i-insert-my-matlab-figure-fig-files-into-multiple-subplots

[shots,d,xmin,xmax,ymin,ymax,sign_twin] = shotnumber_inputs(2,1);

for shot_ind = 1:size(shots,1)
    close all
    shotnum_base = shots(shot_ind,2);
    shotnum_def = shots(shot_ind,1);
    SN_def = num2str(shotnum_def);
    SN_base = num2str(shotnum_base);
    date_def = SN_def(1:6);
    date_base = SN_base(1:6);
    shot_def = SN_def(7:end);
    shot_base = SN_base(7:end);
    
    directory_save = ['/Users/apple/Documents/ZaPHD/DHI',date_def,'comb_den_fig'];
    mkdir(['/Users/apple/Documents/ZaPHD/DHI',date_def,'comb_den_fig']);
    
    %First Figure
    h1 = openfig(['/Users/apple/Documents/ZaPHD/DHI',date_def,'/den_num_contour_',date_def,shot_def,'_',date_base,shot_base,'POS.fig'],'reuse');
    ax1 = gca; % get handle to axes of figure
    pause(0.2)
    %Second Figure
    date_def2 = num2str(str2double(date_def)+2000); % again I use fictional month for a different P location.
    date_base2 = num2str(str2double(date_base)+2000);
    h2 = openfig(['/Users/apple/Documents/ZaPHD/DHI',date_def2,'/den_num_contour_',date_def2,shot_def,'_',date_base2,shot_base,'POS.fig'],'reuse');
    ax2 = gca;
    pause(0.2)
    h3 = figure; hold on %create new figure
    s1 = subplot(1,1,1); %create and get handle to the subplot axes
    fig1 = get(ax1,'children'); %get handle to all the children in the figure
    fig2 = get(ax2,'children'); 
    copyobj(fig1,s1); %copy children to new parent axes i.e. the subplot axes
    copyobj(fig2,s1);
    colormap jet;
    colorbar; 
    axis equal;  
    saveas(h3,[directory_save,'/comb_den_num_contour_',num2str(shotnum_def),'_',num2str(shotnum_base),'POS.tif']);
    saveas(h3,[directory_save,'/comb_den_num_contour_',num2str(shotnum_def),'_',num2str(shotnum_base),'POS.fig']);
end

