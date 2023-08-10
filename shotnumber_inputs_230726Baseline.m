% shotnumber_inputs.m 
% Author:  Michael P. Ross ??
% Date = Sept. 6, 2016
% Description:  This script allows for user control of the shotnumbers and
% reconstruction settings in other DHI analysis codes.

function [shots,d,xmin,xmax,ymin,ymax,sign_twin] = shotnumber_inputs(import,varargin)
        d=1.3;
        xmin=0.0015;
        xmax=0.0260;
        ymin=0.0520;
        ymax=0.0700; 
        sign_twin=1; % okay
        shots = [230726009,230726006;
                 230726012,230726009;
                 230726015,230726012;
                 230726030,230726027;
                 230726034,230726030;
                 230726038,230726034;
                 230726042,230726038;
                 230726047,230726042;
                 230726051,230726047;
                 230726055,230726051;
                 230726059,230726055];
end

