% shotnumber_inputs.m 
% Author:  Michael P. Ross ??
% Date = Sept. 6, 2016
% Description:  This script allows for user control of the shotnumbers and
% reconstruction settings in other DHI analysis codes.

function [shots,d,xmin,xmax,ymin,ymax,sign_twin] = shotnumber_inputs(import,varargin)
        shots = [230726054,230726051];
        d=1.3;
        xmin=0.0015;
        xmax=0.0270;
        ymin=0.0520;
        ymax=0.0700;
        sign_twin=1; % okay
end

% zeroth order box about 31*21 mm
% d = 1.3
% xmin = 0.04246
% xmax = 0.07348
% ymin = 0.04739
% ymax = 0.06888