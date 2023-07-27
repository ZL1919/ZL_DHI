% shotnumber_inputs.m 
% Author:  Michael P. Ross ??
% Date = Sept. 6, 2016
% Description:  This script allows for user control of the shotnumbers and
% reconstruction settings in other DHI analysis codes.

function [shots,d,xmin,xmax,ymin,ymax,sign_twin] = shotnumber_inputs(import,varargin)
        shots = [230622020,230622019]; % NOT READY
        d=1.0;
        xmin=0.004; 
        xmax=0.026; 
        ymin=0.036; 
        ymax=0.06; 
        sign_twin=-1;
        shots = shots_tmp;     
end

% zeroth order box
% d = 1.3
% xmin = 0.04246
% xmax = 0.07348
% ymin = 0.04739
% ymax = 0.06888