% shotnumber_inputs.m 
% Author:  Michael P. Ross ??
% Date = Sept. 6, 2016
% Description:  This script allows for user control of the shotnumbers and
% reconstruction settings in other DHI analysis codes.

function [shots,d,xmin,xmax,ymin,ymax,sign_twin] = shotnumber_inputs(import,varargin)
        shots = [230724054,230724055];
        d=1.3;
        xmin=0.002;
        xmax=0.026;
        ymin=0.050; 
        ymax=0.070;
        sign_twin=1; % okay
end

% zeroth order box about 31*21 mm
% d = 1.3
% xmin = 0.04246
% xmax = 0.07348
% ymin = 0.04739
% ymax = 0.06888