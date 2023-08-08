% put 2 density figures at different P location into the same figure
% ref: https://www.mathworks.com/matlabcentral/answers/101806-how-can-i-insert-my-matlab-figure-fig-files-into-multiple-subplots

close all
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
    
    directory_save = ['/Users/apple/Documents/ZaPHD/DHI',date_def,'comb_fig'];
    mkdir(['/Users/apple/Documents/ZaPHD/DHI',date_def,'comb_fig']);
    
    %First Figure
    h1 = openfig(['/Users/apple/Documents/ZaPHD/DHI',date_def,'/den_int_contour_',date_def,shot_def,'_',date_base,shot_base,'POS.fig'],'reuse'); % open figure
    ax1 = gca; % get handle to axes of figure
    pause(0.2)
    %Second Figure
    date_def2 = num2str(str2double(date_def)+2000);
    date_base2 = num2str(str2double(date_base)+2000);
    h2 = openfig(['/Users/apple/Documents/ZaPHD/DHI',date_def2,'/den_int_contour_',date_def2,shot_def,'_',date_base2,shot_base,'POS.fig'],'reuse');
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
    saveas(h3,[directory_save,'/comb_den_int_contour_',num2str(shotnum_def),'_',num2str(shotnum_base),'POS.tif']);
    saveas(h3,[directory_save,'/comb_den_int_contour_',num2str(shotnum_def),'_',num2str(shotnum_base),'POS.fig']);
end


%----- test code

% close all; 
% h(1) = openfig('den_int_contour_230726054_230726051POS.fig'); 
% h(2) = openfig('den_int_contour_232726054_232726051POS.fig'); 
% hold on; 
% title('Final Merged Figure'); 
% pcolor(h(1).Face); 
% pcolor(h(2).Face); 
% hold off; 

%-----

% close all; 
% h(1) = openfig('den_int_contour_230726054_230726051POS.fig'); 
% h(2) = openfig('den_int_contour_232726054_232726051POS.fig'); 
% hold on; 
% title('Final Merged Figure'); 
% figure
% L = findobj(h(1),'type','surface');
% copyobj(L,findobj(h(2),'type','axes'));
% hold off; 

%-----

% c=hgload('den_int_contour_230726054_230726051POS.fig');
% k=hgload('den_int_contour_232726054_232726051POS.fig');
% % Prepare subplots
% figure
% h(1)=subplot(1,2,1);
% h(2)=subplot(1,2,2);
% % Paste figures on the subplots
% copyobj(allchild(c), h(1))
% copyobj(allchild(k), h(2))

