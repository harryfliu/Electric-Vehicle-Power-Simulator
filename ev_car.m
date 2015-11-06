classdef ev_car < handle
    properties % these are the variables
        x; % x position
        y; % y position
        vx; % velocity x component 
        vy; % velocity y component 
        r; % radius
        tot_time_right; %total time vector
        tot_time_left;
        tot_time_bot;
        sum_time_right;
        sum_time_left;
        sum_time_bot;
        %wall_var; %wall label
        tot_charge; %charge the car uses over the period of time
        time_count_right;
        time_count_left;
        time_count_bot;
        right_count;
        left_count;
        bot_count;
    end
    properties(Constant) % these are the constants
        minx = -10; 
        maxx = 10; 
        miny = -10; 
        maxy = 10;
    end
    methods
        function obj = ev_car() % constructor 
            obj.x = 18*rand(1) - 9;
            obj.y = 18*rand(1) - 9;
            obj.vx = rand(1) - .5;
            obj.vy = rand(1) - .5;
            obj.r = .3;
            obj.tot_time_right = [];
            obj.tot_time_left = [];
            obj.tot_time_bot = [];
            %obj.wall_var = char();
            obj.tot_charge = 0;
            obj.time_count_right = 1;
            obj.time_count_left = 1;
            obj.time_count_bot = 1;
            obj.sum_time_right = 0;
            obj.sum_time_left = 0;
            obj.sum_time_bot = 0;
            obj.right_count = 0;
            obj.left_count = 0;
            obj.bot_count = 0;
        end
        function [] = move(obj) 
            obj.x = obj.x + obj.vx; 
            if((obj.x+obj.r)>=obj.maxx) % hits right wall
                obj.vx = -1*obj.vx;
                obj.x = 10-obj.r; 
            end
            if((obj.x-obj.r)<=obj.minx) %left
                obj.vx = -1*obj.vx; 
                obj.x = -10+obj.r;
            end
            obj.y = obj.y + obj.vy; 
            if((obj.y+obj.r)>=obj.maxy)%top
                obj.vy = -1*obj.vy;
                obj.y = 10-obj.r; 
            end
            if((obj.y-obj.r)<=obj.miny) %bot
                obj.vy = -1*obj.vy; 
                obj.y = -10+obj.r;
            end
        end
        function [xpts ypts] = getpts(obj) 
            t = 0:0.1:2*pi;
            xpts = obj.r*cos(t)+obj.x;
            ypts = obj.r*sin(t)+obj.y;
        end
    end
end
