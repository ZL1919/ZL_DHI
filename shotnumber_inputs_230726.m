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
        shots = [230726007,230726006;
                 230726007,230726009;
                 230726008,230726006;
                 230726008,230726009;
                 230726010,230726009;
                 230726011,230726009;
                 230726013,230726012;
                 230726014,230726012;
                 230726016,230726015;
                 230726017,230726015;
                 230726018,230726015;
                 230726020,230726019;
                 230726021,230726019;
                 230726022,230726019;
                 230726028,230726027;
                 230726029,230726027;
                 230726031,230726030;
                 230726032,230726030;
                 230726032,230726034;
                 230726033,230726030;
                 230726035,230726034;
                 230726036,230726034;
                 230726037,230726034;
                 230726039,230726038;
                 230726040,230726038;
                 230726041,230726038;
                 230726043,230726042;
                 230726044,230726042;
                 230726045,230726042;
                 230726046,230726042;
                 230726046,230726047;
                 230726048,230726047;
                 230726049,230726047;
                 230726050,230726047;
                 230726053,230726051;
                 230726054,230726051;
                 230726054,230726055;
                 230726056,230726055;
                 230726057,230726055;
                 230726058,230726055;
                 230726060,230726059;
                 230726061,230726059;
                 230726062,230726059];
end

