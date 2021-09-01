classdef trialClass
    %TRIALCLASS Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        i 
        j
    end
    
    methods(Static )
        function [ i j ] = addFunc( x , y )
        %ADDFUNC Summary of this function goes here
        %   Detailed explanation goes here

        i = x * y;  
        j = x / y;

        end

    end
    
end

