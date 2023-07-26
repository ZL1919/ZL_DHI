% shotnumber_inputs.m 
% Author:  Michael P. Ross
% Date = Sept. 6, 2016
% Description:  This script allows for user control of the shotnumbers and
% reconstruction settings in other DHI analysis codes.  The subfunction
% shot_base_pair can be made to identify pairs of adjacent plasma 
% (deformed) and baseline shots or adjacent baseline shots.  

function [shots,d,xmin,xmax,ymin,ymax,sign_twin] = shotnumber_inputs(import,varargin)

% using varargin to accept input identifying if the user desires
% deformed-baseline or baseline-baseline pairs
switch(nargin),
    case 0,
        whichPair = 1; % if second input is not provided, the program seeks
        %deformed-baseline pairs by default
    case 1,
        whichPair = 1; % if second input is not provided, the program seeks
        %deformed-baseline pairs by default
    case 2,
        whichPair = varargin{1}; % a second input value of 1 tells the 
        %program to seek for deformed-baseline pairs, a value of 0 tells
        %the program to seek for baseline-baseline pairs
end

switch(import) % this switch statement gives the user some flexibility to 
    % toggle between different groups of shots for analysis.  Usually, case
    % 2 is used.
    case 1
        
        shots_tmp = shot_base_pair(shotnum,whichPair);
        d(1:size(shots_tmp,1)) = 0.5;
        xmin(1:size(shots_tmp,1)) = 0.0446;
        xmax(1:size(shots_tmp,1)) = 0.0555;
        ymin(1:size(shots_tmp,1)) = 0.0237;
        ymax(1:size(shots_tmp,1)) = 0.0429;
        sign_twin(1:size(shots_tmp,1)) = -1;
        shots = shots_tmp;
        
    case 2
 
        % RSI 2016 Paper shots for analysis:
        shots = [160524000+[21,20]];  % identify range of pulses (first
        % pulse must be a baseline
        shots_tmp = shot_base_pair(shots,whichPair);
        d = 0.5;      
        xmin = 0.0446;
        xmax = 0.0555;
        ymin = 0.0237;
        ymax = 0.0429;
        sign_twin = -1;
        shots = shots_tmp;     
end