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
        shots = [234726007,234726006;
                 234726007,234726009;
                 234726008,234726006;
                 234726008,234726009;
                 234726010,234726009;
                 234726011,234726009;
                 234726013,234726012;
                 234726014,234726012;
                 234726016,234726015;
                 234726017,234726015;
                 234726018,234726015;
                 234726020,234726019;
                 234726021,234726019;
                 234726022,234726019;
                 234726028,234726027;
                 234726029,234726027;
                 234726031,234726030;
                 234726032,234726030;
                 234726032,234726034;
                 234726033,234726030;
                 234726035,234726034;
                 234726036,234726034;
                 234726037,234726034;
                 234726039,234726038;
                 234726040,234726038;
                 234726041,234726038;
                 234726043,234726042;
                 234726044,234726042;
                 234726045,234726042;
                 234726046,234726042;
                 234726046,234726047;
                 234726048,234726047;
                 234726049,234726047;
                 234726050,234726047;
                 234726053,234726051;
                 234726054,234726051;
                 234726054,234726055;
                 234726056,234726055;
                 234726057,234726055;
                 234726058,234726055;
                 234726060,234726059;
                 234726061,234726059;
                 234726062,234726059];
end
