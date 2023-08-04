% shotnumber_inputs.m 
% Author:  Michael P. Ross ??
% Date = Sept. 6, 2016
% Description:  This script allows for user control of the shotnumbers and
% reconstruction settings in other DHI analysis codes.

function [shots,d,xmin,xmax,ymin,ymax,sign_twin] = shotnumber_inputs(import,varargin)
        shots = [232726007,232726009];  % +20month for P14
        d=1.1;
        xmin=0.0040;
        xmax=0.0275;
        ymin=0.0350;
        ymax=0.0525;
        sign_twin=1; % okay
end

% zeroth order box about 31*21 mm
