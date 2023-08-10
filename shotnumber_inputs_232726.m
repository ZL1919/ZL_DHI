% shotnumber_inputs.m 
% Author:  Michael P. Ross ??
% Date = Sept. 6, 2016
% Description:  This script allows for user control of the shotnumbers and
% reconstruction settings in other DHI analysis codes.

function [shots,d,xmin,xmax,ymin,ymax,sign_twin] = shotnumber_inputs(import,varargin)
        d=1.1;
        xmin=0.0040;
        xmax=0.0275;
        ymin=0.0350; 
        ymax=0.0525;
        sign_twin=1; % okay
        % +20month for P14
        shots = [232726007,232726006;
                 232726007,232726009;
                 232726008,232726006;
                 232726008,232726009;
                 232726010,232726009;
                 232726011,232726009;
                 232726013,232726012;
                 232726014,232726012;
                 232726016,232726015;
                 232726017,232726015;
                 232726018,232726015;
                 232726020,232726019;
                 232726021,232726019;
                 232726022,232726019;
                 232726028,232726027;
                 232726029,232726027;
                 232726031,232726030;
                 232726032,232726030;
                 232726032,232726034;
                 232726033,232726030;
                 232726035,232726034;
                 232726036,232726034;
                 232726037,232726034;
                 232726039,232726038;
                 232726040,232726038;
                 232726041,232726038;
                 232726043,232726042;
                 232726044,232726042;
                 232726045,232726042;
                 232726046,232726042;
                 232726046,232726047;
                 232726048,232726047;
                 232726049,232726047;
                 232726050,232726047;
                 232726053,232726051;
                 232726054,232726051;
                 232726054,232726055;
                 232726056,232726055;
                 232726057,232726055;
                 232726058,232726055;
                 232726060,232726059;
                 232726061,232726059;
                 232726062,232726059];
end

