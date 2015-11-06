function varargout = proj2gui(varargin)
% PROJ2GUI MATLAB code for proj2gui.fig
%      PROJ2GUI, by itself, creates a new PROJ2GUI or raises the existing
%      singleton*.
%
%      H = PROJ2GUI returns the handle to a new PROJ2GUI or the handle to
%      the existing singleton*.
%
%      PROJ2GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROJ2GUI.M with the given input arguments.
%
%      PROJ2GUI('Property','Value',...) creates a new PROJ2GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before proj2gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to proj2gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help proj2gui

% Last Modified by GUIDE v2.5 18-Mar-2013 23:19:54

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @proj2gui_OpeningFcn, ...
                   'gui_OutputFcn',  @proj2gui_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before proj2gui is made visible.
function proj2gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to proj2gui (see VARARGIN)

load weather.mat;
handles.solar = solar(:,:); %import solar and wind from weather.mat
handles.wind=wind(:,:);



% Choose default command line output for proj2gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes proj2gui wait for user response (see UIRESUME)
% uiwait(handles.evsim);

a=axes('units','normalized', ...
'position',[0 0 1 1]);
uistack(a,'bottom');
A=imread('back.jpg');
image(A)
set(a,'handlevisibility','off')
set(a,'visible','off')


% --- Outputs from this function are returned to the command line.
function varargout = proj2gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in listboxcities.
function listboxcities_Callback(hObject, eventdata, handles)
% hObject    handle to listboxcities (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listboxcities contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listboxcities


% --- Executes during object creation, after setting all properties.
function listboxcities_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listboxcities (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes on button press in solarcheck.
function solarcheck_Callback(hObject, eventdata, handles)
% hObject    handle to solarcheck (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of solarcheck



% --- Executes on button press in checkbox2.
function checkbox2_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox2



% --- Executes on button press in checkbox3.
function checkbox3_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox3



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object deletion, before destroying properties.
function text7_DeleteFcn(hObject, eventdata, handles)
% hObject    handle to text7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function solarpercent_Callback(hObject, eventdata, handles)
% hObject    handle to solarpercent (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of solarpercent as text
%        str2double(get(hObject,'String')) returns contents of solarpercent as a double


% --- Executes during object creation, after setting all properties.
function solarpercent_CreateFcn(hObject, eventdata, handles)
% hObject    handle to solarpercent (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider3_Callback(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

% --- Executes on selection change in monthlist.
function monthlist_Callback(hObject, eventdata, handles)
% hObject    handle to monthlist (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns monthlist contents as cell array
%        contents{get(hObject,'Value')} returns selected item from monthlist


% --- Executes during object creation, after setting all properties.
function monthlist_CreateFcn(hObject, eventdata, handles)
% hObject    handle to monthlist (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in two_cons.
function two_cons_Callback(hObject, eventdata, handles)
% hObject    handle to two_cons (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of two_cons


% --- Executes on button press in three_cons.
function three_cons_Callback(hObject, eventdata, handles)
% hObject    handle to three_cons (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of three_cons

% --- Executes on button press in pusharea.
function pusharea_Callback(hObject, eventdata, handles)
% hObject    handle to pusharea (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.errortext,'String','');

set(handles.curr_plot,'String','Currently showing 6 AM - 11 AM');

ifsolar=get(handles.solarcheck,'Value'); %get user values if solar or if wind
ifwind=get(handles.checkbox2,'Value');

if(ifsolar==0&&ifwind==0)
    set(handles.solarcheck,'Value',1);
end

ifsolar=get(handles.solarcheck,'Value');
ifwind=get(handles.checkbox2,'Value');

month_value= get(handles.monthlist,'Value');
list_value = get(handles.listboxcities, 'Value');

solar_percent=str2double(get(handles.solarpercent,'String'))*.01;%read in solar percentage if both
wind_percent=1-solar_percent;

if(solar_percent>=0&&solar_percent<=1)
else
    set(handles.solarpercent,'String','100');
end

solar_percent=str2double(get(handles.solarpercent,'String'))*.01;
wind_percent=1-solar_percent;

solar_prod=handles.solar(list_value,month_value)*12*.1*959.436;%set the solar production

A=60^2*pi;%area of wind turbine circular motion
wind_speed=handles.wind(list_value,month_value)/3.6;%set wind production

wind_prod=.5*1.23*A*wind_speed^2/1000*530*.1;%density*area*wind speed squared/1000
                                              %for kilowatts*number of turbines

avg_both=(solar_percent*solar_prod)+(wind_percent*wind_prod);%if selected both

for i = [1:54]%sets power_output for all cities
    if (ifsolar==1 && ifwind==1)
        if(i==list_value)
        	power_output=avg_both;
            end
        
    elseif (ifsolar==1)
            if(i==list_value)
                power_output=solar_prod;
            end
   
    elseif (ifwind==1)
            if(i==list_value)
                power_output=wind_prod;
            end
    end
    
       
end

power_arr = [];%create an array for current power_out
power_arr_count = [];
power_arr_count(1) = 1;
pwr_demand = [];%create an array for total power demanded
seg = 5;%start off with seg being 5

baseline_estimate1=(((power_output-102)/5.69)*.85);%estimate number of cars needed
notenough='Error: For the City and Month you selected there is not enough wind power to support any electric cars. Please try again.';

if(wind_speed>.28&&baseline_estimate1<10)%if the cars are between 1 and 10, set to 10
    baseline_estimate1 = 10;
end

count=10;
while baseline_estimate1<0
    wind_prod2=.5*1.23*A*wind_speed^3/1000*(159+count)*.2;
    baseline_estimate1=(((wind_prod2-59)/6.25)*.85);
    count=count+10;
end

if round(baseline_estimate1)==0
    set(handles.errortext,'String',notenough)
end
baseline_estimate=round(baseline_estimate1/10);

set(handles.areatext, 'String', round(baseline_estimate1));

if(baseline_estimate1>1700)
    baseline_estimate1 = 1700;
end

set(handles.slider3,'Value',((round(baseline_estimate1/10))))%set the slider to the estimate of the cars

%write a left, right, and bottom label vector for

num_consumer = 3;%default number of consumers is 3

max_rand = 240;%maximum stays at location for 240 minutes
count_right = zeros(1,170);
count_bot = zeros(1,170);
count_left = zeros(1,170);
sum_right = 0;
sum_left = 0;
sum_bot = 0;
%user_input = round(get(handles.slider3,'Value'));

%
%
%SIX TO ELEVEN
%
%

for b = 1:170, %create 170 cars
    x(b) = ev_car; 
    random(b) = randi(max_rand);
end
for j = 1:300 %first section from six to eleven am
    
        ifcar2 = get(handles.two_cons,'Value');
        ifcar3 = get(handles.three_cons,'Value');
    
        if(ifcar2==1) %set number of consumers
            num_consumer = 2;
        elseif(ifcar3==1)
            num_consumer = 3;
        end
        v = [1:j];
        set(handles.curr_cars,'String',round(get(handles.slider3,'Value'))*10);%output current number of cars
        %fprintf('Current iteration : %d\n\n', j);
        a = []; % this will be my x vector 
        c = []; % this will be my y vector 
        if(j>1)
            for e = 1:round(get(handles.slider3,'Value')), %counts the number of cars for each place
                sum_right = sum_right + x(e).right_count;
                sum_left = sum_left + x(e).left_count;
                sum_bot = sum_bot + x(e).bot_count;
            end
        end
        
        for b = 1:round(get(handles.slider3,'Value')) %stick the balls to each corresponding wall
            %fprintf('x(%d) = %f\ny(%d) = %f\n', b ,x(b).vx, b, x(b).vy);
            %fprintf('Count right : x(%d) = %d\nCount bottom : y(%d) = %d\nCount left : x(%d) = %d\n', b, count(b), b, count_bot(b), b, count_left(b));
            %fprintf('Right count x(%d) : %d.\nLeft count x(%d) = %d.\n Bot count x(%d) : %d.\n', b, x(b).right_count, b, x(b).left_count, b, x(b).bot_count);
            if(sum_right<=50)
                if((x(b).x+x(b).r)>=x(b).maxx&&count_right(b)<random(b)) %stick to right wall
                    if(count_right(b)==0)
                        temp_veloc_x_right(b) = x(b).vx;
                        temp_veloc_y_right(b) = x(b).vy;
                    end
                    x(b).vx = 0; 
                    x(b).vy = 0;
                    count_right(b) = count_right(b)+1;
                    x(b).tot_time_right(x(b).time_count_right) = count_right(b);
                    x(b).right_count = 1;
                    %fprintf('Temp veloc x right(%d) = %f\n Temp veloc y right(%d) = %f\n', b, temp_veloc_x_right(b), b, temp_veloc_y_right(b));
                elseif(count_right(b)>=random(b))
                    x(b).vx = temp_veloc_x_right(b);
                    x(b).vy = temp_veloc_y_right(b);
                    x(b).x = 10-x(b).r;
                    count_right(b) = 0;
                    random(b) = randi(max_rand);
                    x(b).time_count_right = x(b).time_count_right + 1;
                    x(b).right_count = 0;
                end
            elseif(sum_right>50)
                if(x(b).right_count==1)
                    if((x(b).x+x(b).r)>=x(b).maxx&&count_right(b)<random(b))
                            count_right(b) = count_right(b)+1;
                            %fprintf('Count for bot x(%d) : %d\n', b, count_bot(b));
                            x(b).right_count = 1;
                            %fprintf('Temp veloc x bot(%d) = %f\nTemp veloc y bot(%d) = %f\n', b, temp_veloc_x_bot(b), b, temp_veloc_y_bot(b));
                        elseif(count_right(b)>=random(b))
                            x(b).vx = temp_veloc_x_right(b);
                            x(b).vy = temp_veloc_y_right(b);
                            x(b).y = -10+x(b).r;
                            count_right(b) = 0;
                            random(b) = randi(max_rand);
                            x(b).time_count_right = x(b).time_count_right + 1;
                            x(b).right_count = 0;
                    end
                end
            end
            
            if(sum_left<=100)
                if((x(b).x-x(b).r)<=x(b).minx&&count_left(b)<random(b))%stick to left wall
                    if(count_left(b)==0)
                        temp_veloc_x_left(b) = x(b).vx;
                        temp_veloc_y_left(b) = x(b).vy;
                    end
                    x(b).vx = 0; 
                    x(b).vy = 0;
                    count_left(b) = count_left(b)+1;
                    x(b).tot_time_left(x(b).time_count_left) = count_left(b);
                    x(b).left_count = 1;
                    %fprintf('Temp veloc x left(%d) = %f\n Temp veloc y left(%d) = %f\n', b, temp_veloc_x_left(b), b, temp_veloc_y_left(b));
                elseif(count_left(b)>=random(b))
                    x(b).vx = temp_veloc_x_left(b);
                    x(b).vy = temp_veloc_y_left(b);
                    x(b).x = -10+x(b).r;
                    count_left(b) = 0;
                    random(b) = randi(max_rand);
                    x(b).time_count_left = x(b).time_count_left + 1;
                    x(b).left_count = 0;
                end
            elseif(sum_left>100)
                if(x(b).left_count==1)
                    if((x(b).x-x(b).r)<=x(b).minx&&count_left(b)<random(b))
                            count_left(b) = count_left(b)+1;
                            %fprintf('Count for bot x(%d) : %d\n', b, count_bot(b));
                            x(b).left_count = 1;
                            %fprintf('Temp veloc x bot(%d) = %f\nTemp veloc y bot(%d) = %f\n', b, temp_veloc_x_bot(b), b, temp_veloc_y_bot(b));
                        elseif(count_bot(b)>=random(b))
                            x(b).vx = temp_veloc_x_left(b);
                            x(b).vy = temp_veloc_y_left(b);
                            x(b).y = -10+x(b).r;
                            count_left(b) = 0;
                            random(b) = randi(max_rand);
                            x(b).time_count_left = x(b).time_count_left + 1;
                            x(b).left_count = 0;
                    end
                end
            end
            
            if(sum_bot<=20)
                if(num_consumer==3)
                    if((x(b).y-x(b).r)<=x(b).miny&&count_bot(b)<random(b))%stick to bottom wall
                        if(count_bot(b)==0)
                            temp_veloc_x_bot(b) = x(b).vx;
                            temp_veloc_y_bot(b) = x(b).vy;
                        elseif(x(b).vx==0||x(b).vy==0)
                            if((x(b).x-x(b).r)<=x(b).minx)
                                temp_veloc_x_bot(b) = temp_veloc_x_left(b);
                                temp_veloc_y_bot(b) = temp_veloc_y_left(b);
                            elseif((x(b).x+x(b).r)>=x(b).maxx)
                                temp_veloc_x_bot(b) = temp_veloc_x_right(b);
                                temp_veloc_y_bot(b) = temp_veloc_y_right(b);
                            end
                        end   

                        x(b).vx = 0; 
                        x(b).vy = 0;
                        count_bot(b) = count_bot(b)+1;
                        %fprintf('Count for bot x(%d) : %d\n', b, count_bot(b));
                        x(b).tot_time_bot(x(b).time_count_bot) = count_bot(b);
                        x(b).bot_count = 1;
                        %fprintf('Temp veloc x bot(%d) = %f\nTemp veloc y bot(%d) = %f\n', b, temp_veloc_x_bot(b), b, temp_veloc_y_bot(b));
                    elseif(count_bot(b)>=random(b))
                        x(b).vx = temp_veloc_x_bot(b);
                        x(b).vy = temp_veloc_y_bot(b);
                        x(b).y = -10+x(b).r;
                        count_bot(b) = 0;
                        random(b) = randi(max_rand);
                        x(b).time_count_bot = x(b).time_count_bot + 1;
                        x(b).bot_count = 0;
                    end
                end
            elseif(sum_bot>20)
                if(x(b).bot_count==1)
                    if((x(b).y-x(b).r)<=x(b).miny&&count_bot(b)<random(b))
                            count_bot(b) = count_bot(b)+1;
                            %fprintf('Count for bot x(%d) : %d\n', b, count_bot(b));
                            x(b).bot_count = 1;
                            %fprintf('Temp veloc x bot(%d) = %f\nTemp veloc y bot(%d) = %f\n', b, temp_veloc_x_bot(b), b, temp_veloc_y_bot(b));
                        elseif(count_bot(b)>=random(b))
                            x(b).vx = temp_veloc_x_bot(b);
                            x(b).vy = temp_veloc_y_bot(b);
                            x(b).y = -10+x(b).r;
                            count_bot(b) = 0;
                            random(b) = randi(max_rand);
                            x(b).time_count_bot = x(b).time_count_bot + 1;
                            x(b).bot_count = 0;
                    end
                end
            end
                
            %fprintf('Random time : x(%d) = %d\n', b, random(b));
            
            if(x(b).vx~=0&&x(b).vy~=0)
                x(b).move;
            end
            
            [a2 c2] = x(b).getpts; 
            a = [a a2];
            c = [c c2];
        end    
    
    %fprintf('The sum of right = %d.\nThe sum of left = %d.\nThe sum of bot = %d.\n',sum_right,sum_left,sum_bot);
    %add up the total time for each minute
    for k = 1:round(get(handles.slider3,'Value')),
        x(k).sum_time_right = sum(x(k).tot_time_right);
        x(k).sum_time_left = sum(x(k).tot_time_left);
        x(k).sum_time_bot = sum(x(k).tot_time_bot);
        x(k).tot_charge = ((x(k).sum_time_right/240) * 240 * .6) + ((x(k).sum_time_left/240) * 240 * .2) + ((x(k).sum_time_bot/240) * 240 * .2);
    end

    pwr_demand1 = 0;
    
    for d = 1:round(get(handles.slider3,'Value')),
        pwr_demand1 = pwr_demand1 + x(d).tot_charge;
    end
    
    set(handles.curr_demand,'String',pwr_demand1);
    %set the demand for power and current power output
    pwr_demand(j) = pwr_demand1;
    power_arr(j) = power_output;
    
    set(handles.curr_pow,'String',power_arr(j));
    set(handles.tot_car_dem,'String',pwr_demand(j));
    %plot both
    plot(handles.pwr_demand, v,pwr_demand(v));
    axis([0 1440 0 100000]);
    plot(handles.pwr_out, v,power_arr(v));
    axis([0 1440 0 75000]);
    
    %disp(pwr_demand);
    %if then increase segs power output
    if(pwr_demand1>=(power_output*.9)&&seg==5)
        
        set(handles.errortext,'String','Demand has passed 90% of output 1. Going to output 2.');
        
        power_arr_count(2) = 2;
        
        seg = 6;
        
        solar_prod=handles.solar(list_value,month_value)*12*.1*1147.436;

        A=60^2*pi;%area of wind turbine circular motion
        wind_speed=handles.wind(list_value,month_value)/3.6;

        wind_prod=.5*1.23*A*wind_speed^2/1000*730*.1;%density*area*wind speed squared/1000
                                                      %for kilowatts*number of turbines

        avg_both=(solar_percent*solar_prod)+(wind_percent*wind_prod);

        for i = [1:54]
            if (ifsolar==1 && ifwind==1)
                if(i==list_value)
                    power_output=avg_both;
                    end

            elseif (ifsolar==1)
                    if(i==list_value)
                        power_output=solar_prod;
                    end

            elseif (ifwind==1)
                    if(i==list_value)
                        power_output=wind_prod;
                    end
            end


        end
        
        power_arr(j) = power_output;
    end
    
    if(pwr_demand1>=(power_output*.9)&&seg==6)
        
        set(handles.errortext,'String','Demand has passed 90% of output 2. Going to output 3.');
        
        power_arr_count(3) = 3;
        
        seg = 7;
        
        solar_prod=handles.solar(list_value,month_value)*12*.1*1341.436;

        A=60^2*pi;%area of wind turbine circular motion
        wind_speed=handles.wind(list_value,month_value)/3.6;

        wind_prod=.5*1.23*A*wind_speed^2/1000*930*.1;%density*area*wind speed squared/1000
                                                      %for kilowatts*number of turbines

        avg_both=(solar_percent*solar_prod)+(wind_percent*wind_prod);

        for i = [1:54]
            if (ifsolar==1 && ifwind==1)
                if(i==list_value)
                    power_output=avg_both;
                    end

            elseif (ifsolar==1)
                    if(i==list_value)
                        power_output=solar_prod;
                    end

            elseif (ifwind==1)
                    if(i==list_value)
                        power_output=wind_prod;
                    end
            end


        end
        
        power_arr(j) = power_output;
    end
    
    if(pwr_demand1>=(power_output*.9)&&seg==7)
        
        set(handles.errortext,'String','Demand has passed 90% of output 3. Going to output 4.');
        
        power_arr_count(4) = 4;
        
        seg = 8;
        
        solar_prod=handles.solar(list_value,month_value)*12*.1*1806.436;

        A=60^2*pi;%area of wind turbine circular motion
        wind_speed=handles.wind(list_value,month_value)/3.6;

        wind_prod=.5*1.23*A*wind_speed^2/1000*1130*.1;%density*area*wind speed squared/1000
                                                      %for kilowatts*number of turbines

        avg_both=(solar_percent*solar_prod)+(wind_percent*wind_prod);

        for i = [1:54]
            if (ifsolar==1 && ifwind==1)
                if(i==list_value)
                    power_output=avg_both;
                    end

            elseif (ifsolar==1)
                    if(i==list_value)
                        power_output=solar_prod;
                    end

            elseif (ifwind==1)
                    if(i==list_value)
                        power_output=wind_prod;
                    end
            end


        end
        
        power_arr(j) = power_output;
    end
    
    if(pwr_demand1>=(power_output*.9)&&seg==8)
        
        set(handles.errortext,'String','Demand has passed 90% of output 4. Going to output 5.');
        
        power_arr_count(5) = 5;
        
        seg = 9;
        
        solar_prod=handles.solar(list_value,month_value)*12*.1*2290.436;

        A=60^2*pi;%area of wind turbine circular motion
        wind_speed=handles.wind(list_value,month_value)/3.6;

        wind_prod=.5*1.23*A*wind_speed^2/1000*1330*.1;%density*area*wind speed squared/1000
                                                      %for kilowatts*number of turbines

        avg_both=(solar_percent*solar_prod)+(wind_percent*wind_prod);

        for i = [1:54]
            if (ifsolar==1 && ifwind==1)
                if(i==list_value)
                    power_output=avg_both;
                    end

            elseif (ifsolar==1)
                    if(i==list_value)
                        power_output=solar_prod;
                    end

            elseif (ifwind==1)
                    if(i==list_value)
                        power_output=wind_prod;
                    end
            end


        end
        
        power_arr(j) = power_output;
    end
    
    if(pwr_demand1>=(power_output*.9)&&seg==9)
        
        set(handles.errortext,'String','Demand has passed 90% of output 5. Going to output 6.');
        
        power_arr_count(5) = 5;
        
        seg = 10;
        
        solar_prod=handles.solar(list_value,month_value)*12*.1*5000.436;

        A=60^2*pi;%area of wind turbine circular motion
        wind_speed=handles.wind(list_value,month_value)/3.6;

        wind_prod=.5*1.23*A*wind_speed^2/1000*3000*.1;%density*area*wind speed squared/1000
                                                      %for kilowatts*number of turbines

        avg_both=(solar_percent*solar_prod)+(wind_percent*wind_prod);

        for i = [1:54]
            if (ifsolar==1 && ifwind==1)
                if(i==list_value)
                    power_output=avg_both;
                    end

            elseif (ifsolar==1)
                    if(i==list_value)
                        power_output=solar_prod;
                    end

            elseif (ifwind==1)
                    if(i==list_value)
                        power_output=wind_prod;
                    end
            end


        end
        
        power_arr(j) = power_output;
    end
    
    if(pwr_demand1>=(power_output*.9)&&seg==10)
        set(handles.errortext,'String','Demand has passed 90% of all outputs. # of vehicles cannot be supported.');
        seg = 11;
    end
    
    if(pwr_demand1<(power_output*.9)&&seg==11)
        set(handles.errortext,'String','');
        seg = 5;
    end
    
    sum_right = 0;
    sum_left = 0;
    sum_bot = 0;
    %plot the simulation
    plot(handles.simulation,a,c,'bx') 
    xlim(handles.simulation,[-10 10])
    ylim(handles.simulation,[-10 10])
    set(handles.simulation,'XTickLabel',[],'YTickLabel',[]);
    pause(.001)
end
%sum the total amount of time
for k = 1:round(get(handles.slider3,'Value')),
    x(k).sum_time_right = sum(x(k).tot_time_right);
    x(k).sum_time_left = sum(x(k).tot_time_left);
    x(k).sum_time_bot = sum(x(k).tot_time_bot);
    x(k).tot_charge = ((x(k).sum_time_right/240) * 240 * .6) + ((x(k).sum_time_left/240) * 240 * .2) + ((x(k).sum_time_bot/240) * 240 * .2);
end

pwr_demand_tot = 0;

for d = 1:round(get(handles.slider3,'Value')),
    pwr_demand_tot = pwr_demand_tot + x(d).tot_charge;
end

pwr1 = pwr_demand_tot;

%
%
%ELEVEN TO THREE
%
%

set(handles.curr_plot,'String','Currently showing 11 AM - 3 PM');

set(handles.errortext,'String','');

ifsolar=get(handles.solarcheck,'Value');
ifwind=get(handles.checkbox2,'Value');

month_value= get(handles.monthlist,'Value');
list_value = get(handles.listboxcities, 'Value');

solar_percent=str2double(get(handles.solarpercent,'String'))*.01;
wind_percent=1-solar_percent;

solar_prod=handles.solar(list_value,month_value)*12*.48*959.436;

A=60^2*pi;%area of wind turbine circular motion
wind_speed=handles.wind(list_value,month_value)/3.6;

wind_prod=.5*1.23*A*wind_speed^2/1000*530*.2;%density*area*wind speed squared/1000
                                              %for kilowatts*number of turbines

avg_both=(solar_percent*solar_prod)+(wind_percent*wind_prod);

for i = [1:54]
    if (ifsolar==1 && ifwind==1)
        if(i==list_value)
        	power_output=avg_both;
            end
        
    elseif (ifsolar==1)
            if(i==list_value)
                power_output=solar_prod;
            end
   
    elseif (ifwind==1)
            if(i==list_value)
                power_output=wind_prod;
            end
    end
    
       
end

seg = 5;

for b = 1:170,
    x(b) = ev_car; 
    random(b) = randi(max_rand);
end
for j = 301:540
        %seg
        
        ifcar2 = get(handles.two_cons,'Value');
        ifcar3 = get(handles.three_cons,'Value');
    
        if(ifcar2==1)
            num_consumer = 2;
        elseif(ifcar3==1)
            num_consumer = 3;
        end
        t = [301:j];
        v = [1:j];
        set(handles.curr_cars,'String',round(get(handles.slider3,'Value'))*10);
        %fprintf('Current iteration : %d\n\n', j);
        a = []; % this will be my x vector 
        c = []; % this will be my y vector 
        if(j>1)
            for e = 1:round(get(handles.slider3,'Value')),
                sum_right = sum_right + x(e).right_count;
                sum_left = sum_left + x(e).left_count;
                sum_bot = sum_bot + x(e).bot_count;
            end
        end
        
        for b = 1:round(get(handles.slider3,'Value'))
            %fprintf('x(%d) = %f\ny(%d) = %f\n', b ,x(b).vx, b, x(b).vy);
            %fprintf('Count right : x(%d) = %d\nCount bottom : y(%d) = %d\nCount left : x(%d) = %d\n', b, count(b), b, count_bot(b), b, count_left(b));
            %fprintf('Right count x(%d) : %d.\nLeft count x(%d) = %d.\n Bot count x(%d) : %d.\n', b, x(b).right_count, b, x(b).left_count, b, x(b).bot_count);
            if(sum_right<=50)
                if((x(b).x+x(b).r)>=x(b).maxx&&count_right(b)<random(b)) %stick to right wall
                    if(count_right(b)==0)
                        temp_veloc_x_right(b) = x(b).vx;
                        temp_veloc_y_right(b) = x(b).vy;
                    end
                    x(b).vx = 0; 
                    x(b).vy = 0;
                    count_right(b) = count_right(b)+1;
                    x(b).tot_time_right(x(b).time_count_right) = count_right(b);
                    x(b).right_count = 1;
                    %fprintf('Temp veloc x right(%d) = %f\n Temp veloc y right(%d) = %f\n', b, temp_veloc_x_right(b), b, temp_veloc_y_right(b));
                elseif(count_right(b)>=random(b))
                    x(b).vx = temp_veloc_x_right(b);
                    x(b).vy = temp_veloc_y_right(b);
                    x(b).x = 10-x(b).r;
                    count_right(b) = 0;
                    random(b) = randi(max_rand);
                    x(b).time_count_right = x(b).time_count_right + 1;
                    x(b).right_count = 0;
                end
            elseif(sum_right>50)
                if(x(b).right_count==1)
                    if((x(b).x+x(b).r)>=x(b).maxx&&count_right(b)<random(b))
                            count_right(b) = count_right(b)+1;
                            %fprintf('Count for bot x(%d) : %d\n', b, count_bot(b));
                            x(b).right_count = 1;
                            %fprintf('Temp veloc x bot(%d) = %f\nTemp veloc y bot(%d) = %f\n', b, temp_veloc_x_bot(b), b, temp_veloc_y_bot(b));
                        elseif(count_right(b)>=random(b))
                            x(b).vx = temp_veloc_x_right(b);
                            x(b).vy = temp_veloc_y_right(b);
                            x(b).y = -10+x(b).r;
                            count_right(b) = 0;
                            random(b) = randi(max_rand);
                            x(b).time_count_right = x(b).time_count_right + 1;
                            x(b).right_count = 0;
                    end
                end
            end
            
            if(sum_left<=100)
                if((x(b).x-x(b).r)<=x(b).minx&&count_left(b)<random(b))%stick to left wall
                    if(count_left(b)==0)
                        temp_veloc_x_left(b) = x(b).vx;
                        temp_veloc_y_left(b) = x(b).vy;
                    end
                    x(b).vx = 0; 
                    x(b).vy = 0;
                    count_left(b) = count_left(b)+1;
                    x(b).tot_time_left(x(b).time_count_left) = count_left(b);
                    x(b).left_count = 1;
                    %fprintf('Temp veloc x left(%d) = %f\n Temp veloc y left(%d) = %f\n', b, temp_veloc_x_left(b), b, temp_veloc_y_left(b));
                elseif(count_left(b)>=random(b))
                    x(b).vx = temp_veloc_x_left(b);
                    x(b).vy = temp_veloc_y_left(b);
                    x(b).x = -10+x(b).r;
                    count_left(b) = 0;
                    random(b) = randi(max_rand);
                    x(b).time_count_left = x(b).time_count_left + 1;
                    x(b).left_count = 0;
                end
            elseif(sum_left>100)
                if(x(b).left_count==1)
                    if((x(b).x-x(b).r)<=x(b).minx&&count_left(b)<random(b))
                            count_left(b) = count_left(b)+1;
                            %fprintf('Count for bot x(%d) : %d\n', b, count_bot(b));
                            x(b).left_count = 1;
                            %fprintf('Temp veloc x bot(%d) = %f\nTemp veloc y bot(%d) = %f\n', b, temp_veloc_x_bot(b), b, temp_veloc_y_bot(b));
                        elseif(count_bot(b)>=random(b))
                            x(b).vx = temp_veloc_x_left(b);
                            x(b).vy = temp_veloc_y_left(b);
                            x(b).y = -10+x(b).r;
                            count_left(b) = 0;
                            random(b) = randi(max_rand);
                            x(b).time_count_left = x(b).time_count_left + 1;
                            x(b).left_count = 0;
                    end
                end
            end
            
            if(sum_bot<=20)
                if(num_consumer==3)
                    if((x(b).y-x(b).r)<=x(b).miny&&count_bot(b)<random(b))%stick to bottom wall
                        if(count_bot(b)==0)
                            temp_veloc_x_bot(b) = x(b).vx;
                            temp_veloc_y_bot(b) = x(b).vy;
                        elseif(x(b).vx==0||x(b).vy==0)
                            if((x(b).x-x(b).r)<=x(b).minx)
                                temp_veloc_x_bot(b) = temp_veloc_x_left(b);
                                temp_veloc_y_bot(b) = temp_veloc_y_left(b);
                            elseif((x(b).x+x(b).r)>=x(b).maxx)
                                temp_veloc_x_bot(b) = temp_veloc_x_right(b);
                                temp_veloc_y_bot(b) = temp_veloc_y_right(b);
                            end
                        end   

                        x(b).vx = 0; 
                        x(b).vy = 0;
                        count_bot(b) = count_bot(b)+1;
                        %fprintf('Count for bot x(%d) : %d\n', b, count_bot(b));
                        x(b).tot_time_bot(x(b).time_count_bot) = count_bot(b);
                        x(b).bot_count = 1;
                        %fprintf('Temp veloc x bot(%d) = %f\nTemp veloc y bot(%d) = %f\n', b, temp_veloc_x_bot(b), b, temp_veloc_y_bot(b));
                    elseif(count_bot(b)>=random(b))
                        x(b).vx = temp_veloc_x_bot(b);
                        x(b).vy = temp_veloc_y_bot(b);
                        x(b).y = -10+x(b).r;
                        count_bot(b) = 0;
                        random(b) = randi(max_rand);
                        x(b).time_count_bot = x(b).time_count_bot + 1;
                        x(b).bot_count = 0;
                    end
                end
            elseif(sum_bot>20)
                if(x(b).bot_count==1)
                    if((x(b).y-x(b).r)<=x(b).miny&&count_bot(b)<random(b))
                            count_bot(b) = count_bot(b)+1;
                            %fprintf('Count for bot x(%d) : %d\n', b, count_bot(b));
                            x(b).bot_count = 1;
                            %fprintf('Temp veloc x bot(%d) = %f\nTemp veloc y bot(%d) = %f\n', b, temp_veloc_x_bot(b), b, temp_veloc_y_bot(b));
                        elseif(count_bot(b)>=random(b))
                            x(b).vx = temp_veloc_x_bot(b);
                            x(b).vy = temp_veloc_y_bot(b);
                            x(b).y = -10+x(b).r;
                            count_bot(b) = 0;
                            random(b) = randi(max_rand);
                            x(b).time_count_bot = x(b).time_count_bot + 1;
                            x(b).bot_count = 0;
                    end
                end
            end
                
            %fprintf('Random time : x(%d) = %d\n', b, random(b));
            
            if(x(b).vx~=0&&x(b).vy~=0)
                x(b).move;
            end
            
            [a2 c2] = x(b).getpts; 
            a = [a a2];
            c = [c c2];
        end    
    
    %fprintf('The sum of right = %d.\nThe sum of left = %d.\nThe sum of bot = %d.\n',sum_right,sum_left,sum_bot);
    
    for k = 1:round(get(handles.slider3,'Value')),
        x(k).sum_time_right = sum(x(k).tot_time_right);
        x(k).sum_time_left = sum(x(k).tot_time_left);
        x(k).sum_time_bot = sum(x(k).tot_time_bot);
        x(k).tot_charge = ((x(k).sum_time_right/240) * 240 * .8) + ((x(k).sum_time_left/240) * 240 * .6) + ((x(k).sum_time_bot/240) * 240 * .1);
    end
    
    pwr_demand1 = 0;
    
    for d = 1:round(get(handles.slider3,'Value')),
        pwr_demand1 = pwr_demand1 + x(d).tot_charge;
    end
    
    pwr_demand(j) = pwr1 + pwr_demand1;
    power_arr(j) = power_output;
    
    %pwr_demand(j)
    %power_output
    
    set(handles.curr_demand,'String',pwr_demand1);
    set(handles.curr_pow,'String',power_arr(j));
    set(handles.tot_car_dem,'String',pwr_demand(j));
    
    plot(handles.pwr_demand, v,pwr_demand(v));
    axis([0 1440 0 100000]);
    plot(handles.pwr_out, v,power_arr(v));
    axis([0 1440 0 75000]);
    
    %disp(pwr_demand);
    
    if(pwr_demand1>=(power_output*.9)&&seg==5)
        
        set(handles.errortext,'String','Demand has passed 90% of output 1. Going to output 2.');
        
        power_arr_count(2) = 2;
        
        seg = 6;
        
        solar_prod=handles.solar(list_value,month_value)*12*.48*1147.436;

        A=60^2*pi;%area of wind turbine circular motion
        wind_speed=handles.wind(list_value,month_value)/3.6;

        wind_prod=.5*1.23*A*wind_speed^2/1000*730*.2;%density*area*wind speed squared/1000
                                                      %for kilowatts*number of turbines

        avg_both=(solar_percent*solar_prod)+(wind_percent*wind_prod);

        for i = [1:54]
            if (ifsolar==1 && ifwind==1)
                if(i==list_value)
                    power_output=avg_both;
                    end

            elseif (ifsolar==1)
                    if(i==list_value)
                        power_output=solar_prod;
                    end

            elseif (ifwind==1)
                    if(i==list_value)
                        power_output=wind_prod;
                    end
            end


        end
        
        power_arr(j) = power_output;
    end
    
    if(pwr_demand1>=(power_output*.9)&&seg==6)
        
        set(handles.errortext,'String','Demand has passed 90% of output 2. Going to output 3.');
        
        power_arr_count(3) = 3;
        
        seg = 7;
        
        solar_prod=handles.solar(list_value,month_value)*12*.48*1341.436;

        A=60^2*pi;%area of wind turbine circular motion
        wind_speed=handles.wind(list_value,month_value)/3.6;

        wind_prod=.5*1.23*A*wind_speed^2/1000*930*.2;%density*area*wind speed squared/1000
                                                      %for kilowatts*number of turbines

        avg_both=(solar_percent*solar_prod)+(wind_percent*wind_prod);

        for i = [1:54]
            if (ifsolar==1 && ifwind==1)
                if(i==list_value)
                    power_output=avg_both;
                    end

            elseif (ifsolar==1)
                    if(i==list_value)
                        power_output=solar_prod;
                    end

            elseif (ifwind==1)
                    if(i==list_value)
                        power_output=wind_prod;
                    end
            end


        end
        
        power_arr(j) = power_output;
    end
    
    if(pwr_demand1>=(power_output*.9)&&seg==7)
        
        set(handles.errortext,'String','Demand has passed 90% of output 3. Going to output 4.');
        
        power_arr_count(4) = 4;
        
        seg = 8;
        
        solar_prod=handles.solar(list_value,month_value)*12*.48*1806.436;

        A=60^2*pi;%area of wind turbine circular motion
        wind_speed=handles.wind(list_value,month_value)/3.6;

        wind_prod=.5*1.23*A*wind_speed^2/1000*1130*.1;%density*area*wind speed squared/1000
                                                      %for kilowatts*number of turbines

        avg_both=(solar_percent*solar_prod)+(wind_percent*wind_prod);

        for i = [1:54]
            if (ifsolar==1 && ifwind==1)
                if(i==list_value)
                    power_output=avg_both;
                    end

            elseif (ifsolar==1)
                    if(i==list_value)
                        power_output=solar_prod;
                    end

            elseif (ifwind==1)
                    if(i==list_value)
                        power_output=wind_prod;
                    end
            end


        end
        
        power_arr(j) = power_output;
    end
    
    if(pwr_demand1>=(power_output*.9)&&seg==8)
        
        set(handles.errortext,'String','Demand has passed 90% of output 4. Going to output 5.');
        
        power_arr_count(5) = 5;
        
        seg = 9;
        
        solar_prod=handles.solar(list_value,month_value)*12*.48*2290.436;

        A=60^2*pi;%area of wind turbine circular motion
        wind_speed=handles.wind(list_value,month_value)/3.6;

        wind_prod=.5*1.23*A*wind_speed^2/1000*1330*.2;%density*area*wind speed squared/1000
                                                      %for kilowatts*number of turbines

        avg_both=(solar_percent*solar_prod)+(wind_percent*wind_prod);

        for i = [1:54]
            if (ifsolar==1 && ifwind==1)
                if(i==list_value)
                    power_output=avg_both;
                    end

            elseif (ifsolar==1)
                    if(i==list_value)
                        power_output=solar_prod;
                    end

            elseif (ifwind==1)
                    if(i==list_value)
                        power_output=wind_prod;
                    end
            end


        end
        
        power_arr(j) = power_output;
    end
    
    if(pwr_demand1>=(power_output*.9)&&seg==9)
        
        set(handles.errortext,'String','Demand has passed 90% of output 5. Going to output 6.');
        
        power_arr_count(5) = 5;
        
        seg = 10;
        
        solar_prod=handles.solar(list_value,month_value)*12*.48*5000.436;

        A=60^2*pi;%area of wind turbine circular motion
        wind_speed=handles.wind(list_value,month_value)/3.6;

        wind_prod=.5*1.23*A*wind_speed^2/1000*3000*.20;%density*area*wind speed squared/1000
                                                      %for kilowatts*number of turbines

        avg_both=(solar_percent*solar_prod)+(wind_percent*wind_prod);

        for i = [1:54]
            if (ifsolar==1 && ifwind==1)
                if(i==list_value)
                    power_output=avg_both;
                    end

            elseif (ifsolar==1)
                    if(i==list_value)
                        power_output=solar_prod;
                    end

            elseif (ifwind==1)
                    if(i==list_value)
                        power_output=wind_prod;
                    end
            end


        end
        
        power_arr(j) = power_output;
    end
    
    if(pwr_demand1>=(power_output*.9)&&seg==10)
        set(handles.errortext,'String','Demand has passed 90% of all outputs. # of vehicles cannot be supported.');
        seg = 11;
    end
    
    if(pwr_demand1<(power_output*.9)&&seg==11)
        set(handles.errortext,'String','');
        seg = 5;
    end
    
    sum_right = 0;
    sum_left = 0;
    sum_bot = 0;
    
    plot(handles.simulation,a,c,'bx')
    xlim(handles.simulation,[-10 10])
    ylim(handles.simulation,[-10 10])
    set(handles.simulation,'XTickLabel',[],'YTickLabel',[]);
    pause(0.001)
end

for k = 1:round(get(handles.slider3,'Value')),
    x(k).sum_time_right = sum(x(k).tot_time_right);
    x(k).sum_time_left = sum(x(k).tot_time_left);
    x(k).sum_time_bot = sum(x(k).tot_time_bot);
    x(k).tot_charge = ((x(k).sum_time_right/240) * 240 * .8) + ((x(k).sum_time_left/240) * 240 * .6) + ((x(k).sum_time_bot/240) * 240 * .1);
end

pwr_demand_tot = 0;

for d = 1:round(get(handles.slider3,'Value')),
    pwr_demand_tot = pwr_demand_tot + x(d).tot_charge;
end

pwr2 = pwr_demand_tot;

%
%
%THREE TO SEVEN
%
%

set(handles.curr_plot,'String','Currently showing 3 PM - 7 PM');

set(handles.errortext,'String','');

ifsolar=get(handles.solarcheck,'Value');
ifwind=get(handles.checkbox2,'Value');

month_value= get(handles.monthlist,'Value');
list_value = get(handles.listboxcities, 'Value');

solar_percent=str2double(get(handles.solarpercent,'String'))*.01;
wind_percent=1-solar_percent;

solar_prod=handles.solar(list_value,month_value)*12*.35*959.436;

A=60^2*pi;%area of wind turbine circular motion
wind_speed=handles.wind(list_value,month_value)/3.6;

wind_prod=.5*1.23*A*wind_speed^2/1000*530*.35;%density*area*wind speed squared/1000
                                              %for kilowatts*number of turbines

avg_both=(solar_percent*solar_prod)+(wind_percent*wind_prod);

for i = [1:54]
    if (ifsolar==1 && ifwind==1)
        if(i==list_value)
        	power_output=avg_both;
            end
        
    elseif (ifsolar==1)
            if(i==list_value)
                power_output=solar_prod;
            end
   
    elseif (ifwind==1)
            if(i==list_value)
                power_output=wind_prod;
            end
    end
    
       
end

seg = 5;

for b = 1:170,
    x(b) = ev_car; 
    random(b) = randi(max_rand);
end
for j = 541:780
    
        %seg
        
        ifcar2 = get(handles.two_cons,'Value');
        ifcar3 = get(handles.three_cons,'Value');
    
        if(ifcar2==1)
            num_consumer = 2;
        elseif(ifcar3==1)
            num_consumer = 3;
        end
        v = [1:j];
        t = [541:j];
        set(handles.curr_cars,'String',round(get(handles.slider3,'Value'))*10);
        %fprintf('Current iteration : %d\n\n', j);
        a = []; % this will be my x vector 
        c = []; % this will be my y vector 
        if(j>1)
            for e = 1:round(get(handles.slider3,'Value')),
                sum_right = sum_right + x(e).right_count;
                sum_left = sum_left + x(e).left_count;
                sum_bot = sum_bot + x(e).bot_count;
            end
        end
        
        for b = 1:round(get(handles.slider3,'Value'))
            %fprintf('x(%d) = %f\ny(%d) = %f\n', b ,x(b).vx, b, x(b).vy);
            %fprintf('Count right : x(%d) = %d\nCount bottom : y(%d) = %d\nCount left : x(%d) = %d\n', b, count(b), b, count_bot(b), b, count_left(b));
            %fprintf('Right count x(%d) : %d.\nLeft count x(%d) = %d.\n Bot count x(%d) : %d.\n', b, x(b).right_count, b, x(b).left_count, b, x(b).bot_count);
            if(sum_right<=50)
                if((x(b).x+x(b).r)>=x(b).maxx&&count_right(b)<random(b)) %stick to right wall
                    if(count_right(b)==0)
                        temp_veloc_x_right(b) = x(b).vx;
                        temp_veloc_y_right(b) = x(b).vy;
                    end
                    x(b).vx = 0; 
                    x(b).vy = 0;
                    count_right(b) = count_right(b)+1;
                    x(b).tot_time_right(x(b).time_count_right) = count_right(b);
                    x(b).right_count = 1;
                    %fprintf('Temp veloc x right(%d) = %f\n Temp veloc y right(%d) = %f\n', b, temp_veloc_x_right(b), b, temp_veloc_y_right(b));
                elseif(count_right(b)>=random(b))
                    x(b).vx = temp_veloc_x_right(b);
                    x(b).vy = temp_veloc_y_right(b);
                    x(b).x = 10-x(b).r;
                    count_right(b) = 0;
                    random(b) = randi(max_rand);
                    x(b).time_count_right = x(b).time_count_right + 1;
                    x(b).right_count = 0;
                end
            elseif(sum_right>50)
                if(x(b).right_count==1)
                    if((x(b).x+x(b).r)>=x(b).maxx&&count_right(b)<random(b))
                            count_right(b) = count_right(b)+1;
                            %fprintf('Count for bot x(%d) : %d\n', b, count_bot(b));
                            x(b).right_count = 1;
                            %fprintf('Temp veloc x bot(%d) = %f\nTemp veloc y bot(%d) = %f\n', b, temp_veloc_x_bot(b), b, temp_veloc_y_bot(b));
                        elseif(count_right(b)>=random(b))
                            x(b).vx = temp_veloc_x_right(b);
                            x(b).vy = temp_veloc_y_right(b);
                            x(b).y = -10+x(b).r;
                            count_right(b) = 0;
                            random(b) = randi(max_rand);
                            x(b).time_count_right = x(b).time_count_right + 1;
                            x(b).right_count = 0;
                    end
                end
            end
            
            if(sum_left<=100)
                if((x(b).x-x(b).r)<=x(b).minx&&count_left(b)<random(b))%stick to left wall
                    if(count_left(b)==0)
                        temp_veloc_x_left(b) = x(b).vx;
                        temp_veloc_y_left(b) = x(b).vy;
                    end
                    x(b).vx = 0; 
                    x(b).vy = 0;
                    count_left(b) = count_left(b)+1;
                    x(b).tot_time_left(x(b).time_count_left) = count_left(b);
                    x(b).left_count = 1;
                    %fprintf('Temp veloc x left(%d) = %f\n Temp veloc y left(%d) = %f\n', b, temp_veloc_x_left(b), b, temp_veloc_y_left(b));
                elseif(count_left(b)>=random(b))
                    x(b).vx = temp_veloc_x_left(b);
                    x(b).vy = temp_veloc_y_left(b);
                    x(b).x = -10+x(b).r;
                    count_left(b) = 0;
                    random(b) = randi(max_rand);
                    x(b).time_count_left = x(b).time_count_left + 1;
                    x(b).left_count = 0;
                end
            elseif(sum_left>100)
                if(x(b).left_count==1)
                    if((x(b).x-x(b).r)<=x(b).minx&&count_left(b)<random(b))
                            count_left(b) = count_left(b)+1;
                            %fprintf('Count for bot x(%d) : %d\n', b, count_bot(b));
                            x(b).left_count = 1;
                            %fprintf('Temp veloc x bot(%d) = %f\nTemp veloc y bot(%d) = %f\n', b, temp_veloc_x_bot(b), b, temp_veloc_y_bot(b));
                        elseif(count_bot(b)>=random(b))
                            x(b).vx = temp_veloc_x_left(b);
                            x(b).vy = temp_veloc_y_left(b);
                            x(b).y = -10+x(b).r;
                            count_left(b) = 0;
                            random(b) = randi(max_rand);
                            x(b).time_count_left = x(b).time_count_left + 1;
                            x(b).left_count = 0;
                    end
                end
            end
            
            if(sum_bot<=20)
                if(num_consumer==3)
                    if((x(b).y-x(b).r)<=x(b).miny&&count_bot(b)<random(b))%stick to bottom wall
                        if(count_bot(b)==0)
                            temp_veloc_x_bot(b) = x(b).vx;
                            temp_veloc_y_bot(b) = x(b).vy;
                        elseif(x(b).vx==0||x(b).vy==0)
                            if((x(b).x-x(b).r)<=x(b).minx)
                                temp_veloc_x_bot(b) = temp_veloc_x_left(b);
                                temp_veloc_y_bot(b) = temp_veloc_y_left(b);
                            elseif((x(b).x+x(b).r)>=x(b).maxx)
                                temp_veloc_x_bot(b) = temp_veloc_x_right(b);
                                temp_veloc_y_bot(b) = temp_veloc_y_right(b);
                            end
                        end   

                        x(b).vx = 0; 
                        x(b).vy = 0;
                        count_bot(b) = count_bot(b)+1;
                        %fprintf('Count for bot x(%d) : %d\n', b, count_bot(b));
                        x(b).tot_time_bot(x(b).time_count_bot) = count_bot(b);
                        x(b).bot_count = 1;
                        %fprintf('Temp veloc x bot(%d) = %f\nTemp veloc y bot(%d) = %f\n', b, temp_veloc_x_bot(b), b, temp_veloc_y_bot(b));
                    elseif(count_bot(b)>=random(b))
                        x(b).vx = temp_veloc_x_bot(b);
                        x(b).vy = temp_veloc_y_bot(b);
                        x(b).y = -10+x(b).r;
                        count_bot(b) = 0;
                        random(b) = randi(max_rand);
                        x(b).time_count_bot = x(b).time_count_bot + 1;
                        x(b).bot_count = 0;
                    end
                end
            elseif(sum_bot>20)
                if(x(b).bot_count==1)
                    if((x(b).y-x(b).r)<=x(b).miny&&count_bot(b)<random(b))
                            count_bot(b) = count_bot(b)+1;
                            %fprintf('Count for bot x(%d) : %d\n', b, count_bot(b));
                            x(b).bot_count = 1;
                            %fprintf('Temp veloc x bot(%d) = %f\nTemp veloc y bot(%d) = %f\n', b, temp_veloc_x_bot(b), b, temp_veloc_y_bot(b));
                        elseif(count_bot(b)>=random(b))
                            x(b).vx = temp_veloc_x_bot(b);
                            x(b).vy = temp_veloc_y_bot(b);
                            x(b).y = -10+x(b).r;
                            count_bot(b) = 0;
                            random(b) = randi(max_rand);
                            x(b).time_count_bot = x(b).time_count_bot + 1;
                            x(b).bot_count = 0;
                    end
                end
            end
                
            %fprintf('Random time : x(%d) = %d\n', b, random(b));
            
            if(x(b).vx~=0&&x(b).vy~=0)
                x(b).move;
            end
            
            [a2 c2] = x(b).getpts; 
            a = [a a2];
            c = [c c2];
        end    
    
    %fprintf('The sum of right = %d.\nThe sum of left = %d.\nThe sum of bot = %d.\n',sum_right,sum_left,sum_bot);
    
    for k = 1:round(get(handles.slider3,'Value')),
        x(k).sum_time_right = sum(x(k).tot_time_right);
        x(k).sum_time_left = sum(x(k).tot_time_left);
        x(k).sum_time_bot = sum(x(k).tot_time_bot);
        x(k).tot_charge = ((x(k).sum_time_right/240) * 240 * .3) + ((x(k).sum_time_left/240) * 240 * .7) + ((x(k).sum_time_bot/240) * 240 * .6);
    end
    
    pwr_demand1 = 0;
    
    for d = 1:round(get(handles.slider3,'Value')),
        pwr_demand1 = pwr_demand1 + x(d).tot_charge;
    end
    
    pwr_demand(j) = pwr_demand1 + pwr1 + pwr2;
    power_arr(j) = power_output;
    
    set(handles.curr_demand,'String',pwr_demand1);
    set(handles.curr_pow,'String',power_arr(j));
    set(handles.tot_car_dem,'String',pwr_demand(j));
    
    plot(handles.pwr_demand, v,pwr_demand(v));
    axis([0 1440 0 100000]);
    plot(handles.pwr_out, v,power_arr(v));
    axis([0 1440 0 75000]);
    
    %disp(pwr_demand);
    
    if(pwr_demand1>=(power_output*.9)&&seg==5)
        
        set(handles.errortext,'String','Demand has passed 90% of output 1. Going to output 2.');
        
        power_arr_count(2) = 2;
        
        seg = 6;
        
        solar_prod=handles.solar(list_value,month_value)*12*.35*1147.436;

        A=60^2*pi;%area of wind turbine circular motion
        wind_speed=handles.wind(list_value,month_value)/3.6;

        wind_prod=.5*1.23*A*wind_speed^2/1000*730*.35;%density*area*wind speed squared/1000
                                                      %for kilowatts*number of turbines

        avg_both=(solar_percent*solar_prod)+(wind_percent*wind_prod);

        for i = [1:54]
            if (ifsolar==1 && ifwind==1)
                if(i==list_value)
                    power_output=avg_both;
                    end

            elseif (ifsolar==1)
                    if(i==list_value)
                        power_output=solar_prod;
                    end

            elseif (ifwind==1)
                    if(i==list_value)
                        power_output=wind_prod;
                    end
            end


        end
        
        power_arr(j) = power_output;
    end
    
    if(pwr_demand1>=(power_output*.9)&&seg==6)
        
        set(handles.errortext,'String','Demand has passed 90% of output 2. Going to output 3.');
        
        power_arr_count(3) = 3;
        
        seg = 7;
        
        solar_prod=handles.solar(list_value,month_value)*12*.35*1341.436;

        A=60^2*pi;%area of wind turbine circular motion
        wind_speed=handles.wind(list_value,month_value)/3.6;

        wind_prod=.5*1.23*A*wind_speed^2/1000*930*.35;%density*area*wind speed squared/1000
                                                      %for kilowatts*number of turbines

        avg_both=(solar_percent*solar_prod)+(wind_percent*wind_prod);

        for i = [1:54]
            if (ifsolar==1 && ifwind==1)
                if(i==list_value)
                    power_output=avg_both;
                    end

            elseif (ifsolar==1)
                    if(i==list_value)
                        power_output=solar_prod;
                    end

            elseif (ifwind==1)
                    if(i==list_value)
                        power_output=wind_prod;
                    end
            end


        end
        
        power_arr(j) = power_output;
    end
    
    if(pwr_demand1>=(power_output*.9)&&seg==7)
        
        set(handles.errortext,'String','Demand has passed 90% of output 3. Going to output 4.');
        
        power_arr_count(4) = 4;
        
        seg = 8;
        
        solar_prod=handles.solar(list_value,month_value)*12*.35*1806.436;

        A=60^2*pi;%area of wind turbine circular motion
        wind_speed=handles.wind(list_value,month_value)/3.6;

        wind_prod=.5*1.23*A*wind_speed^2/1000*1130*.35;%density*area*wind speed squared/1000
                                                      %for kilowatts*number of turbines

        avg_both=(solar_percent*solar_prod)+(wind_percent*wind_prod);

        for i = [1:54]
            if (ifsolar==1 && ifwind==1)
                if(i==list_value)
                    power_output=avg_both;
                    end

            elseif (ifsolar==1)
                    if(i==list_value)
                        power_output=solar_prod;
                    end

            elseif (ifwind==1)
                    if(i==list_value)
                        power_output=wind_prod;
                    end
            end


        end
        
        power_arr(j) = power_output;
    end
    
    if(pwr_demand1>=(power_output*.9)&&seg==8)
        
        set(handles.errortext,'String','Demand has passed 90% of output 4. Going to output 5.');
        
        power_arr_count(5) = 5;
        
        seg = 9;
        
        solar_prod=handles.solar(list_value,month_value)*12*.35*2290.436;

        A=60^2*pi;%area of wind turbine circular motion
        wind_speed=handles.wind(list_value,month_value)/3.6;

        wind_prod=.5*1.23*A*wind_speed^2/1000*1330*.35;%density*area*wind speed squared/1000
                                                      %for kilowatts*number of turbines

        avg_both=(solar_percent*solar_prod)+(wind_percent*wind_prod);

        for i = [1:54]
            if (ifsolar==1 && ifwind==1)
                if(i==list_value)
                    power_output=avg_both;
                    end

            elseif (ifsolar==1)
                    if(i==list_value)
                        power_output=solar_prod;
                    end

            elseif (ifwind==1)
                    if(i==list_value)
                        power_output=wind_prod;
                    end
            end


        end
        
        power_arr(j) = power_output;
    end
    
    if(pwr_demand1>=(power_output*.9)&&seg==9)
        
        set(handles.errortext,'String','Demand has passed 90% of output 5. Going to output 6.');
        
        power_arr_count(5) = 5;
        
        seg = 10;
        
        solar_prod=handles.solar(list_value,month_value)*12*.35*5000.436;

        A=60^2*pi;%area of wind turbine circular motion
        wind_speed=handles.wind(list_value,month_value)/3.6;

        wind_prod=.5*1.23*A*wind_speed^2/1000*3000*.35;%density*area*wind speed squared/1000
                                                      %for kilowatts*number of turbines

        avg_both=(solar_percent*solar_prod)+(wind_percent*wind_prod);

        for i = [1:54]
            if (ifsolar==1 && ifwind==1)
                if(i==list_value)
                    power_output=avg_both;
                    end

            elseif (ifsolar==1)
                    if(i==list_value)
                        power_output=solar_prod;
                    end

            elseif (ifwind==1)
                    if(i==list_value)
                        power_output=wind_prod;
                    end
            end


        end
        
        power_arr(j) = power_output;
    end
    
    if(pwr_demand1>=(power_output*.9)&&seg==10)
        set(handles.errortext,'String','Demand has passed 90% of all outputs. # of vehicles cannot be supported.');
        seg = 11;
    end
    
    if(pwr_demand1<(power_output*.9)&&seg==11)
        set(handles.errortext,'String','');
        seg = 5;
    end
    
    sum_right = 0;
    sum_left = 0;
    sum_bot = 0;
    
    plot(handles.simulation,a,c,'bx')
    xlim(handles.simulation,[-10 10])
    ylim(handles.simulation,[-10 10])
    set(handles.simulation,'XTickLabel',[],'YTickLabel',[]);
    pause(0.001)
end

for k = 1:round(get(handles.slider3,'Value')),
    x(k).sum_time_right = sum(x(k).tot_time_right);
    x(k).sum_time_left = sum(x(k).tot_time_left);
    x(k).sum_time_bot = sum(x(k).tot_time_bot);
    x(k).tot_charge = ((x(k).sum_time_right/240) * 240 * .3) + ((x(k).sum_time_left/240) * 240 * .7) + ((x(k).sum_time_bot/240) * 240 * .6);
end

pwr_demand_tot = 0;

for d = 1:round(get(handles.slider3,'Value')),
    pwr_demand_tot = pwr_demand_tot + x(d).tot_charge;
end

pwr3 = pwr_demand_tot;

%
%
%SEVEN TO TWELVE
%
%

set(handles.curr_plot,'String','Currently showing 7 PM - 12 AM');

set(handles.errortext,'String','');

ifsolar=get(handles.solarcheck,'Value');
ifwind=get(handles.checkbox2,'Value');

month_value= get(handles.monthlist,'Value');
list_value = get(handles.listboxcities, 'Value');

solar_percent=str2double(get(handles.solarpercent,'String'))*.01;
wind_percent=1-solar_percent;

solar_prod=handles.solar(list_value,month_value)*12*.06*959.436;

A=60^2*pi;%area of wind turbine circular motion
wind_speed=handles.wind(list_value,month_value)/3.6;

wind_prod=.5*1.23*A*wind_speed^2/1000*530*.30;%density*area*wind speed squared/1000
                                              %for kilowatts*number of turbines

avg_both=(solar_percent*solar_prod)+(wind_percent*wind_prod);

for i = [1:54]
    if (ifsolar==1 && ifwind==1)
        if(i==list_value)
        	power_output=avg_both;
            end
        
    elseif (ifsolar==1)
            if(i==list_value)
                power_output=solar_prod;
            end
   
    elseif (ifwind==1)
            if(i==list_value)
                power_output=wind_prod;
            end
    end
    
       
end

seg = 5;

for b = 1:170,
    x(b) = ev_car; 
    random(b) = randi(max_rand);
end
for j = 781:1080
    
        %seg
        
        ifcar2 = get(handles.two_cons,'Value');
        ifcar3 = get(handles.three_cons,'Value');
    
        if(ifcar2==1)
            num_consumer = 2;
        elseif(ifcar3==1)
            num_consumer = 3;
        end
        v = [1:j];
        t = [541:j];
        set(handles.curr_cars,'String',round(get(handles.slider3,'Value'))*10);
        %fprintf('Current iteration : %d\n\n', j);
        a = []; % this will be my x vector 
        c = []; % this will be my y vector 
        if(j>1)
            for e = 1:round(get(handles.slider3,'Value')),
                sum_right = sum_right + x(e).right_count;
                sum_left = sum_left + x(e).left_count;
                sum_bot = sum_bot + x(e).bot_count;
            end
        end
        
        for b = 1:round(get(handles.slider3,'Value'))
            %fprintf('x(%d) = %f\ny(%d) = %f\n', b ,x(b).vx, b, x(b).vy);
            %fprintf('Count right : x(%d) = %d\nCount bottom : y(%d) = %d\nCount left : x(%d) = %d\n', b, count(b), b, count_bot(b), b, count_left(b));
            %fprintf('Right count x(%d) : %d.\nLeft count x(%d) = %d.\n Bot count x(%d) : %d.\n', b, x(b).right_count, b, x(b).left_count, b, x(b).bot_count);
            if(sum_right<=50)
                if((x(b).x+x(b).r)>=x(b).maxx&&count_right(b)<random(b)) %stick to right wall
                    if(count_right(b)==0)
                        temp_veloc_x_right(b) = x(b).vx;
                        temp_veloc_y_right(b) = x(b).vy;
                    end
                    x(b).vx = 0; 
                    x(b).vy = 0;
                    count_right(b) = count_right(b)+1;
                    x(b).tot_time_right(x(b).time_count_right) = count_right(b);
                    x(b).right_count = 1;
                    %fprintf('Temp veloc x right(%d) = %f\n Temp veloc y right(%d) = %f\n', b, temp_veloc_x_right(b), b, temp_veloc_y_right(b));
                elseif(count_right(b)>=random(b))
                    x(b).vx = temp_veloc_x_right(b);
                    x(b).vy = temp_veloc_y_right(b);
                    x(b).x = 10-x(b).r;
                    count_right(b) = 0;
                    random(b) = randi(max_rand);
                    x(b).time_count_right = x(b).time_count_right + 1;
                    x(b).right_count = 0;
                end
            elseif(sum_right>50)
                if(x(b).right_count==1)
                    if((x(b).x+x(b).r)>=x(b).maxx&&count_right(b)<random(b))
                            count_right(b) = count_right(b)+1;
                            %fprintf('Count for bot x(%d) : %d\n', b, count_bot(b));
                            x(b).right_count = 1;
                            %fprintf('Temp veloc x bot(%d) = %f\nTemp veloc y bot(%d) = %f\n', b, temp_veloc_x_bot(b), b, temp_veloc_y_bot(b));
                        elseif(count_right(b)>=random(b))
                            x(b).vx = temp_veloc_x_right(b);
                            x(b).vy = temp_veloc_y_right(b);
                            x(b).y = -10+x(b).r;
                            count_right(b) = 0;
                            random(b) = randi(max_rand);
                            x(b).time_count_right = x(b).time_count_right + 1;
                            x(b).right_count = 0;
                    end
                end
            end
            
            if(sum_left<=100)
                if((x(b).x-x(b).r)<=x(b).minx&&count_left(b)<random(b))%stick to left wall
                    if(count_left(b)==0)
                        temp_veloc_x_left(b) = x(b).vx;
                        temp_veloc_y_left(b) = x(b).vy;
                    end
                    x(b).vx = 0; 
                    x(b).vy = 0;
                    count_left(b) = count_left(b)+1;
                    x(b).tot_time_left(x(b).time_count_left) = count_left(b);
                    x(b).left_count = 1;
                    %fprintf('Temp veloc x left(%d) = %f\n Temp veloc y left(%d) = %f\n', b, temp_veloc_x_left(b), b, temp_veloc_y_left(b));
                elseif(count_left(b)>=random(b))
                    x(b).vx = temp_veloc_x_left(b);
                    x(b).vy = temp_veloc_y_left(b);
                    x(b).x = -10+x(b).r;
                    count_left(b) = 0;
                    random(b) = randi(max_rand);
                    x(b).time_count_left = x(b).time_count_left + 1;
                    x(b).left_count = 0;
                end
            elseif(sum_left>100)
                if(x(b).left_count==1)
                    if((x(b).x-x(b).r)<=x(b).minx&&count_left(b)<random(b))
                            count_left(b) = count_left(b)+1;
                            %fprintf('Count for bot x(%d) : %d\n', b, count_bot(b));
                            x(b).left_count = 1;
                            %fprintf('Temp veloc x bot(%d) = %f\nTemp veloc y bot(%d) = %f\n', b, temp_veloc_x_bot(b), b, temp_veloc_y_bot(b));
                        elseif(count_bot(b)>=random(b))
                            x(b).vx = temp_veloc_x_left(b);
                            x(b).vy = temp_veloc_y_left(b);
                            x(b).y = -10+x(b).r;
                            count_left(b) = 0;
                            random(b) = randi(max_rand);
                            x(b).time_count_left = x(b).time_count_left + 1;
                            x(b).left_count = 0;
                    end
                end
            end
            
            if(sum_bot<=20)
                if(num_consumer==3)
                    if((x(b).y-x(b).r)<=x(b).miny&&count_bot(b)<random(b))%stick to bottom wall
                        if(count_bot(b)==0)
                            temp_veloc_x_bot(b) = x(b).vx;
                            temp_veloc_y_bot(b) = x(b).vy;
                        elseif(x(b).vx==0||x(b).vy==0)
                            if((x(b).x-x(b).r)<=x(b).minx)
                                temp_veloc_x_bot(b) = temp_veloc_x_left(b);
                                temp_veloc_y_bot(b) = temp_veloc_y_left(b);
                            elseif((x(b).x+x(b).r)>=x(b).maxx)
                                temp_veloc_x_bot(b) = temp_veloc_x_right(b);
                                temp_veloc_y_bot(b) = temp_veloc_y_right(b);
                            end
                        end   

                        x(b).vx = 0; 
                        x(b).vy = 0;
                        count_bot(b) = count_bot(b)+1;
                        %fprintf('Count for bot x(%d) : %d\n', b, count_bot(b));
                        x(b).tot_time_bot(x(b).time_count_bot) = count_bot(b);
                        x(b).bot_count = 1;
                        %fprintf('Temp veloc x bot(%d) = %f\nTemp veloc y bot(%d) = %f\n', b, temp_veloc_x_bot(b), b, temp_veloc_y_bot(b));
                    elseif(count_bot(b)>=random(b))
                        x(b).vx = temp_veloc_x_bot(b);
                        x(b).vy = temp_veloc_y_bot(b);
                        x(b).y = -10+x(b).r;
                        count_bot(b) = 0;
                        random(b) = randi(max_rand);
                        x(b).time_count_bot = x(b).time_count_bot + 1;
                        x(b).bot_count = 0;
                    end
                end
            elseif(sum_bot>20)
                if(x(b).bot_count==1)
                    if((x(b).y-x(b).r)<=x(b).miny&&count_bot(b)<random(b))
                            count_bot(b) = count_bot(b)+1;
                            %fprintf('Count for bot x(%d) : %d\n', b, count_bot(b));
                            x(b).bot_count = 1;
                            %fprintf('Temp veloc x bot(%d) = %f\nTemp veloc y bot(%d) = %f\n', b, temp_veloc_x_bot(b), b, temp_veloc_y_bot(b));
                        elseif(count_bot(b)>=random(b))
                            x(b).vx = temp_veloc_x_bot(b);
                            x(b).vy = temp_veloc_y_bot(b);
                            x(b).y = -10+x(b).r;
                            count_bot(b) = 0;
                            random(b) = randi(max_rand);
                            x(b).time_count_bot = x(b).time_count_bot + 1;
                            x(b).bot_count = 0;
                    end
                end
            end
                
            %fprintf('Random time : x(%d) = %d\n', b, random(b));
            
            if(x(b).vx~=0&&x(b).vy~=0)
                x(b).move;
            end
            
            [a2 c2] = x(b).getpts; 
            a = [a a2];
            c = [c c2];
        end    
    
    %fprintf('The sum of right = %d.\nThe sum of left = %d.\nThe sum of bot = %d.\n',sum_right,sum_left,sum_bot);
    
    for k = 1:round(get(handles.slider3,'Value')),
        x(k).sum_time_right = sum(x(k).tot_time_right);
        x(k).sum_time_left = sum(x(k).tot_time_left);
        x(k).sum_time_bot = sum(x(k).tot_time_bot);
        x(k).tot_charge = ((x(k).sum_time_right/240) * 240 * .1) + ((x(k).sum_time_left/240) * 240 * .6) + ((x(k).sum_time_bot/240) * 240 * .7);
    end
    
    pwr_demand1 = 0;
    
    for d = 1:round(get(handles.slider3,'Value')),
        pwr_demand1 = pwr_demand1 + x(d).tot_charge;
    end
    
    pwr_demand(j) = pwr_demand1 + pwr1 + pwr2 + pwr3;
    power_arr(j) = power_output;
    
    set(handles.curr_demand,'String',pwr_demand1);
    set(handles.curr_pow,'String',power_arr(j));
    set(handles.tot_car_dem,'String',pwr_demand(j));
    
    plot(handles.pwr_demand, v,pwr_demand(v));
    axis([0 1440 0 100000]);
    plot(handles.pwr_out, v,power_arr(v));
    axis([0 1440 0 75000]);
    
    %disp(pwr_demand);
    
    if(pwr_demand1>=(power_output*.9)&&seg==5)
        
        set(handles.errortext,'String','Demand has passed 90% of output 1. Going to output 2.');
        
        power_arr_count(2) = 2;
        
        seg = 6;
        
        solar_prod=handles.solar(list_value,month_value)*12*.06*1147.436;

        A=60^2*pi;%area of wind turbine circular motion
        wind_speed=handles.wind(list_value,month_value)/3.6;

        wind_prod=.5*1.23*A*wind_speed^2/1000*730*.30;%density*area*wind speed squared/1000
                                                      %for kilowatts*number of turbines

        avg_both=(solar_percent*solar_prod)+(wind_percent*wind_prod);

        for i = [1:54]
            if (ifsolar==1 && ifwind==1)
                if(i==list_value)
                    power_output=avg_both;
                    end

            elseif (ifsolar==1)
                    if(i==list_value)
                        power_output=solar_prod;
                    end

            elseif (ifwind==1)
                    if(i==list_value)
                        power_output=wind_prod;
                    end
            end


        end
        
        power_arr(j) = power_output;
    end
    
    if(pwr_demand1>=(power_output*.9)&&seg==6)
        
        set(handles.errortext,'String','Demand has passed 90% of output 2. Going to output 3.');
        
        power_arr_count(3) = 3;
        
        seg = 7;
        
        solar_prod=handles.solar(list_value,month_value)*12*.06*1341.436;

        A=60^2*pi;%area of wind turbine circular motion
        wind_speed=handles.wind(list_value,month_value)/3.6;

        wind_prod=.5*1.23*A*wind_speed^2/1000*930*.30;%density*area*wind speed squared/1000
                                                      %for kilowatts*number of turbines

        avg_both=(solar_percent*solar_prod)+(wind_percent*wind_prod);

        for i = [1:54]
            if (ifsolar==1 && ifwind==1)
                if(i==list_value)
                    power_output=avg_both;
                    end

            elseif (ifsolar==1)
                    if(i==list_value)
                        power_output=solar_prod;
                    end

            elseif (ifwind==1)
                    if(i==list_value)
                        power_output=wind_prod;
                    end
            end


        end
        
        power_arr(j) = power_output;
    end
    
    if(pwr_demand1>=(power_output*.9)&&seg==7)
        
        set(handles.errortext,'String','Demand has passed 90% of output 3. Going to output 4.');
        
        power_arr_count(4) = 4;
        
        seg = 8;
        
        solar_prod=handles.solar(list_value,month_value)*12*.06*1806.436;

        A=60^2*pi;%area of wind turbine circular motion
        wind_speed=handles.wind(list_value,month_value)/3.6;

        wind_prod=.5*1.23*A*wind_speed^2/1000*1130*.30;%density*area*wind speed squared/1000
                                                      %for kilowatts*number of turbines

        avg_both=(solar_percent*solar_prod)+(wind_percent*wind_prod);

        for i = [1:54]
            if (ifsolar==1 && ifwind==1)
                if(i==list_value)
                    power_output=avg_both;
                    end

            elseif (ifsolar==1)
                    if(i==list_value)
                        power_output=solar_prod;
                    end

            elseif (ifwind==1)
                    if(i==list_value)
                        power_output=wind_prod;
                    end
            end


        end
        
        power_arr(j) = power_output;
    end
    
    if(pwr_demand1>=(power_output*.9)&&seg==8)
        
        set(handles.errortext,'String','Demand has passed 90% of output 4. Going to output 5.');
        
        power_arr_count(5) = 5;
        
        seg = 9;
        
        solar_prod=handles.solar(list_value,month_value)*12*.06*2290.436;

        A=60^2*pi;%area of wind turbine circular motion
        wind_speed=handles.wind(list_value,month_value)/3.6;

        wind_prod=.5*1.23*A*wind_speed^2/1000*1330*.30;%density*area*wind speed squared/1000
                                                      %for kilowatts*number of turbines

        avg_both=(solar_percent*solar_prod)+(wind_percent*wind_prod);

        for i = [1:54]
            if (ifsolar==1 && ifwind==1)
                if(i==list_value)
                    power_output=avg_both;
                    end

            elseif (ifsolar==1)
                    if(i==list_value)
                        power_output=solar_prod;
                    end

            elseif (ifwind==1)
                    if(i==list_value)
                        power_output=wind_prod;
                    end
            end


        end
        
        power_arr(j) = power_output;
    end
    
    if(pwr_demand1>=(power_output*.9)&&seg==9)
        
        set(handles.errortext,'String','Demand has passed 90% of output 5. Going to output 6.');
        
        power_arr_count(5) = 5;
        
        seg = 10;
        
        solar_prod=handles.solar(list_value,month_value)*12*.06*5000.436;

        A=60^2*pi;%area of wind turbine circular motion
        wind_speed=handles.wind(list_value,month_value)/3.6;

        wind_prod=.5*1.23*A*wind_speed^2/1000*3000*.30;%density*area*wind speed squared/1000
                                                      %for kilowatts*number of turbines

        avg_both=(solar_percent*solar_prod)+(wind_percent*wind_prod);

        for i = [1:54]
            if (ifsolar==1 && ifwind==1)
                if(i==list_value)
                    power_output=avg_both;
                    end

            elseif (ifsolar==1)
                    if(i==list_value)
                        power_output=solar_prod;
                    end

            elseif (ifwind==1)
                    if(i==list_value)
                        power_output=wind_prod;
                    end
            end


        end
        
        power_arr(j) = power_output;
    end
    
    if(pwr_demand1>=(power_output*.9)&&seg==10)
        set(handles.errortext,'String','Demand has passed 90% of all outputs. # of vehicles cannot be supported.');
        seg = 11;
    end
    
    if(pwr_demand1<(power_output*.9)&&seg==11)
        set(handles.errortext,'String','');
        seg = 5;
    end
    
    sum_right = 0;
    sum_left = 0;
    sum_bot = 0;
    
    plot(handles.simulation,a,c,'bx')
    xlim(handles.simulation,[-10 10])
    ylim(handles.simulation,[-10 10])
    set(handles.simulation,'XTickLabel',[],'YTickLabel',[]);
    pause(0.001)
end

for k = 1:round(get(handles.slider3,'Value')),
    x(k).sum_time_right = sum(x(k).tot_time_right);
    x(k).sum_time_left = sum(x(k).tot_time_left);
    x(k).sum_time_bot = sum(x(k).tot_time_bot);
    x(k).tot_charge = ((x(k).sum_time_right/240) * 240 * .1) + ((x(k).sum_time_left/240) * 240 * .6) + ((x(k).sum_time_bot/240) * 240 * .7);
end

pwr_demand_tot = 0;

for d = 1:round(get(handles.slider3,'Value')),
    pwr_demand_tot = pwr_demand_tot + x(d).tot_charge;
end

pwr4 = pwr_demand_tot;

%
%
%TWELVE TO SIX
%
%

set(handles.curr_plot,'String','Currently showing 12 AM - 6 AM');

set(handles.errortext,'String','');

ifsolar=get(handles.solarcheck,'Value');
ifwind=get(handles.checkbox2,'Value');

month_value= get(handles.monthlist,'Value');
list_value = get(handles.listboxcities, 'Value');

solar_percent=str2double(get(handles.solarpercent,'String'))*.01;
wind_percent=1-solar_percent;

solar_prod=handles.solar(list_value,month_value)*12*.01*959.436;

A=60^2*pi;%area of wind turbine circular motion
wind_speed=handles.wind(list_value,month_value)/3.6;

wind_prod=.5*1.23*A*wind_speed^2/1000*530*.05;%density*area*wind speed squared/1000
                                              %for kilowatts*number of turbines

avg_both=(solar_percent*solar_prod)+(wind_percent*wind_prod);

for i = [1:54]
    if (ifsolar==1 && ifwind==1)
        if(i==list_value)
        	power_output=avg_both;
            end
        
    elseif (ifsolar==1)
            if(i==list_value)
                power_output=solar_prod;
            end
   
    elseif (ifwind==1)
            if(i==list_value)
                power_output=wind_prod;
            end
    end
    
       
end

seg = 5;

for b = 1:170,
    x(b) = ev_car; 
    random(b) = randi(max_rand);
end
for j = 1081:1440
    
        %seg
        
        ifcar2 = get(handles.two_cons,'Value');
        ifcar3 = get(handles.three_cons,'Value');
    
        if(ifcar2==1)
            num_consumer = 2;
        elseif(ifcar3==1)
            num_consumer = 3;
        end
        v = [1:j];
        set(handles.curr_cars,'String',round(get(handles.slider3,'Value'))*10);
        %fprintf('Current iteration : %d\n\n', j);
        a = []; % this will be my x vector 
        c = []; % this will be my y vector 
        if(j>1)
            for e = 1:round(get(handles.slider3,'Value')),
                sum_right = sum_right + x(e).right_count;
                sum_left = sum_left + x(e).left_count;
                sum_bot = sum_bot + x(e).bot_count;
            end
        end
        
        for b = 1:round(get(handles.slider3,'Value'))
            %fprintf('x(%d) = %f\ny(%d) = %f\n', b ,x(b).vx, b, x(b).vy);
            %fprintf('Count right : x(%d) = %d\nCount bottom : y(%d) = %d\nCount left : x(%d) = %d\n', b, count(b), b, count_bot(b), b, count_left(b));
            %fprintf('Right count x(%d) : %d.\nLeft count x(%d) = %d.\n Bot count x(%d) : %d.\n', b, x(b).right_count, b, x(b).left_count, b, x(b).bot_count);
            if(sum_right<=50)
                if((x(b).x+x(b).r)>=x(b).maxx&&count_right(b)<random(b)) %stick to right wall
                    if(count_right(b)==0)
                        temp_veloc_x_right(b) = x(b).vx;
                        temp_veloc_y_right(b) = x(b).vy;
                    end
                    x(b).vx = 0; 
                    x(b).vy = 0;
                    count_right(b) = count_right(b)+1;
                    x(b).tot_time_right(x(b).time_count_right) = count_right(b);
                    x(b).right_count = 1;
                    %fprintf('Temp veloc x right(%d) = %f\n Temp veloc y right(%d) = %f\n', b, temp_veloc_x_right(b), b, temp_veloc_y_right(b));
                elseif(count_right(b)>=random(b))
                    x(b).vx = temp_veloc_x_right(b);
                    x(b).vy = temp_veloc_y_right(b);
                    x(b).x = 10-x(b).r;
                    count_right(b) = 0;
                    random(b) = randi(max_rand);
                    x(b).time_count_right = x(b).time_count_right + 1;
                    x(b).right_count = 0;
                end
            elseif(sum_right>50)
                if(x(b).right_count==1)
                    if((x(b).x+x(b).r)>=x(b).maxx&&count_right(b)<random(b))
                            count_right(b) = count_right(b)+1;
                            %fprintf('Count for bot x(%d) : %d\n', b, count_bot(b));
                            x(b).right_count = 1;
                            %fprintf('Temp veloc x bot(%d) = %f\nTemp veloc y bot(%d) = %f\n', b, temp_veloc_x_bot(b), b, temp_veloc_y_bot(b));
                        elseif(count_right(b)>=random(b))
                            x(b).vx = temp_veloc_x_right(b);
                            x(b).vy = temp_veloc_y_right(b);
                            x(b).y = -10+x(b).r;
                            count_right(b) = 0;
                            random(b) = randi(max_rand);
                            x(b).time_count_right = x(b).time_count_right + 1;
                            x(b).right_count = 0;
                    end
                end
            end
            
            if(sum_left<=100)
                if((x(b).x-x(b).r)<=x(b).minx&&count_left(b)<random(b))%stick to left wall
                    if(count_left(b)==0)
                        temp_veloc_x_left(b) = x(b).vx;
                        temp_veloc_y_left(b) = x(b).vy;
                    end
                    x(b).vx = 0; 
                    x(b).vy = 0;
                    count_left(b) = count_left(b)+1;
                    x(b).tot_time_left(x(b).time_count_left) = count_left(b);
                    x(b).left_count = 1;
                    %fprintf('Temp veloc x left(%d) = %f\n Temp veloc y left(%d) = %f\n', b, temp_veloc_x_left(b), b, temp_veloc_y_left(b));
                elseif(count_left(b)>=random(b))
                    x(b).vx = temp_veloc_x_left(b);
                    x(b).vy = temp_veloc_y_left(b);
                    x(b).x = -10+x(b).r;
                    count_left(b) = 0;
                    random(b) = randi(max_rand);
                    x(b).time_count_left = x(b).time_count_left + 1;
                    x(b).left_count = 0;
                end
            elseif(sum_left>100)
                if(x(b).left_count==1)
                    if((x(b).x-x(b).r)<=x(b).minx&&count_left(b)<random(b))
                            count_left(b) = count_left(b)+1;
                            %fprintf('Count for bot x(%d) : %d\n', b, count_bot(b));
                            x(b).left_count = 1;
                            %fprintf('Temp veloc x bot(%d) = %f\nTemp veloc y bot(%d) = %f\n', b, temp_veloc_x_bot(b), b, temp_veloc_y_bot(b));
                        elseif(count_bot(b)>=random(b))
                            x(b).vx = temp_veloc_x_left(b);
                            x(b).vy = temp_veloc_y_left(b);
                            x(b).y = -10+x(b).r;
                            count_left(b) = 0;
                            random(b) = randi(max_rand);
                            x(b).time_count_left = x(b).time_count_left + 1;
                            x(b).left_count = 0;
                    end
                end
            end
            
            if(sum_bot<=20)
                if(num_consumer==3)
                    if((x(b).y-x(b).r)<=x(b).miny&&count_bot(b)<random(b))%stick to bottom wall
                        if(count_bot(b)==0)
                            temp_veloc_x_bot(b) = x(b).vx;
                            temp_veloc_y_bot(b) = x(b).vy;
                        elseif(x(b).vx==0||x(b).vy==0)
                            if((x(b).x-x(b).r)<=x(b).minx)
                                temp_veloc_x_bot(b) = temp_veloc_x_left(b);
                                temp_veloc_y_bot(b) = temp_veloc_y_left(b);
                            elseif((x(b).x+x(b).r)>=x(b).maxx)
                                temp_veloc_x_bot(b) = temp_veloc_x_right(b);
                                temp_veloc_y_bot(b) = temp_veloc_y_right(b);
                            end
                        end   

                        x(b).vx = 0; 
                        x(b).vy = 0;
                        count_bot(b) = count_bot(b)+1;
                        %fprintf('Count for bot x(%d) : %d\n', b, count_bot(b));
                        x(b).tot_time_bot(x(b).time_count_bot) = count_bot(b);
                        x(b).bot_count = 1;
                        %fprintf('Temp veloc x bot(%d) = %f\nTemp veloc y bot(%d) = %f\n', b, temp_veloc_x_bot(b), b, temp_veloc_y_bot(b));
                    elseif(count_bot(b)>=random(b))
                        x(b).vx = temp_veloc_x_bot(b);
                        x(b).vy = temp_veloc_y_bot(b);
                        x(b).y = -10+x(b).r;
                        count_bot(b) = 0;
                        random(b) = randi(max_rand);
                        x(b).time_count_bot = x(b).time_count_bot + 1;
                        x(b).bot_count = 0;
                    end
                end
            elseif(sum_bot>20)
                if(x(b).bot_count==1)
                    if((x(b).y-x(b).r)<=x(b).miny&&count_bot(b)<random(b))
                            count_bot(b) = count_bot(b)+1;
                            %fprintf('Count for bot x(%d) : %d\n', b, count_bot(b));
                            x(b).bot_count = 1;
                            %fprintf('Temp veloc x bot(%d) = %f\nTemp veloc y bot(%d) = %f\n', b, temp_veloc_x_bot(b), b, temp_veloc_y_bot(b));
                        elseif(count_bot(b)>=random(b))
                            x(b).vx = temp_veloc_x_bot(b);
                            x(b).vy = temp_veloc_y_bot(b);
                            x(b).y = -10+x(b).r;
                            count_bot(b) = 0;
                            random(b) = randi(max_rand);
                            x(b).time_count_bot = x(b).time_count_bot + 1;
                            x(b).bot_count = 0;
                    end
                end
            end
                
            %fprintf('Random time : x(%d) = %d\n', b, random(b));
            
            if(x(b).vx~=0&&x(b).vy~=0)
                x(b).move;
            end
            
            [a2 c2] = x(b).getpts; 
            a = [a a2];
            c = [c c2];
        end    
    
    %fprintf('The sum of right = %d.\nThe sum of left = %d.\nThe sum of bot = %d.\n',sum_right,sum_left,sum_bot);
    
    for k = 1:round(get(handles.slider3,'Value')),
        x(k).sum_time_right = sum(x(k).tot_time_right);
        x(k).sum_time_left = sum(x(k).tot_time_left);
        x(k).sum_time_bot = sum(x(k).tot_time_bot);
        x(k).tot_charge = ((x(k).sum_time_right/240) * 240 * .05) + ((x(k).sum_time_left/240) * 240 * .05) + ((x(k).sum_time_bot/240) * 240 * .9);
    end
    
    pwr_demand1 = 0;
    
    for d = 1:round(get(handles.slider3,'Value')),
        pwr_demand1 = pwr_demand1 + x(d).tot_charge;
    end
    
    pwr_demand(j) = pwr_demand1 + pwr1 + pwr2 + pwr3 + pwr4;
    power_arr(j) = power_output;
    
    set(handles.curr_demand,'String',pwr_demand1);
    set(handles.curr_pow,'String',power_arr(j));
    set(handles.tot_car_dem,'String',pwr_demand(j));
    
    plot(handles.pwr_demand, v,pwr_demand(v));
    axis([0 1440 0 100000]);
    plot(handles.pwr_out, v,power_arr(v));
    axis([0 1440 0 75000]);
    
    %disp(pwr_demand);
    
    if(pwr_demand1>=(power_output*.9)&&seg==5)
        
        set(handles.errortext,'String','Demand has passed 90% of output 1. Going to output 2.');
        
        power_arr_count(2) = 2;
        
        seg = 6;
        
        solar_prod=handles.solar(list_value,month_value)*12*.01*1147.436;

        A=60^2*pi;%area of wind turbine circular motion
        wind_speed=handles.wind(list_value,month_value)/3.6;

        wind_prod=.5*1.23*A*wind_speed^2/1000*730*.05;%density*area*wind speed squared/1000
                                                      %for kilowatts*number of turbines

        avg_both=(solar_percent*solar_prod)+(wind_percent*wind_prod);

        for i = [1:54]
            if (ifsolar==1 && ifwind==1)
                if(i==list_value)
                    power_output=avg_both;
                    end

            elseif (ifsolar==1)
                    if(i==list_value)
                        power_output=solar_prod;
                    end

            elseif (ifwind==1)
                    if(i==list_value)
                        power_output=wind_prod;
                    end
            end


        end
        
        power_arr(j) = power_output;
    end
    
    if(pwr_demand1>=(power_output*.9)&&seg==6)
        
        set(handles.errortext,'String','Demand has passed 90% of output 2. Going to output 3.');
        
        power_arr_count(3) = 3;
        
        seg = 7;
        
        solar_prod=handles.solar(list_value,month_value)*12*.01*1341.436;

        A=60^2*pi;%area of wind turbine circular motion
        wind_speed=handles.wind(list_value,month_value)/3.6;

        wind_prod=.5*1.23*A*wind_speed^2/1000*930*.05;%density*area*wind speed squared/1000
                                                      %for kilowatts*number of turbines

        avg_both=(solar_percent*solar_prod)+(wind_percent*wind_prod);

        for i = [1:54]
            if (ifsolar==1 && ifwind==1)
                if(i==list_value)
                    power_output=avg_both;
                    end

            elseif (ifsolar==1)
                    if(i==list_value)
                        power_output=solar_prod;
                    end

            elseif (ifwind==1)
                    if(i==list_value)
                        power_output=wind_prod;
                    end
            end


        end
        
        power_arr(j) = power_output;
    end
    
    if(pwr_demand1>=(power_output*.9)&&seg==7)
        
        set(handles.errortext,'String','Demand has passed 90% of output 3. Going to output 4.');
        
        power_arr_count(4) = 4;
        
        seg = 8;
        
        solar_prod=handles.solar(list_value,month_value)*12*.01*1806.436;

        A=60^2*pi;%area of wind turbine circular motion
        wind_speed=handles.wind(list_value,month_value)/3.6;

        wind_prod=.5*1.23*A*wind_speed^2/1000*1130*.05;%density*area*wind speed squared/1000
                                                      %for kilowatts*number of turbines

        avg_both=(solar_percent*solar_prod)+(wind_percent*wind_prod);

        for i = [1:54]
            if (ifsolar==1 && ifwind==1)
                if(i==list_value)
                    power_output=avg_both;
                    end

            elseif (ifsolar==1)
                    if(i==list_value)
                        power_output=solar_prod;
                    end

            elseif (ifwind==1)
                    if(i==list_value)
                        power_output=wind_prod;
                    end
            end


        end
        
        power_arr(j) = power_output;
    end
    
    if(pwr_demand1>=(power_output*.9)&&seg==8)
        
        set(handles.errortext,'String','Demand has passed 90% of output 4. Going to output 5.');
        
        power_arr_count(5) = 5;
        
        seg = 9;
        
        solar_prod=handles.solar(list_value,month_value)*12*.01*2290.436;

        A=60^2*pi;%area of wind turbine circular motion
        wind_speed=handles.wind(list_value,month_value)/3.6;

        wind_prod=.5*1.23*A*wind_speed^2/1000*1330*.05;%density*area*wind speed squared/1000
                                                      %for kilowatts*number of turbines

        avg_both=(solar_percent*solar_prod)+(wind_percent*wind_prod);

        for i = [1:54]
            if (ifsolar==1 && ifwind==1)
                if(i==list_value)
                    power_output=avg_both;
                    end

            elseif (ifsolar==1)
                    if(i==list_value)
                        power_output=solar_prod;
                    end

            elseif (ifwind==1)
                    if(i==list_value)
                        power_output=wind_prod;
                    end
            end


        end
        
        power_arr(j) = power_output;
    end
    
    if(pwr_demand1>=(power_output*.9)&&seg==9)
        
        set(handles.errortext,'String','Demand has passed 90% of output 5. Going to output 6.');
        
        power_arr_count(5) = 5;
        
        seg = 10;
        
        solar_prod=handles.solar(list_value,month_value)*12*.01*5000.436;

        A=60^2*pi;%area of wind turbine circular motion
        wind_speed=handles.wind(list_value,month_value)/3.6;

        wind_prod=.5*1.23*A*wind_speed^2/1000*3000*.05;%density*area*wind speed squared/1000
                                                      %for kilowatts*number of turbines

        avg_both=(solar_percent*solar_prod)+(wind_percent*wind_prod);

        for i = [1:54]
            if (ifsolar==1 && ifwind==1)
                if(i==list_value)
                    power_output=avg_both;
                    end

            elseif (ifsolar==1)
                    if(i==list_value)
                        power_output=solar_prod;
                    end

            elseif (ifwind==1)
                    if(i==list_value)
                        power_output=wind_prod;
                    end
            end


        end
        
        power_arr(j) = power_output;
    end
    
    if(pwr_demand1>=(power_output*.9)&&seg==10)
        set(handles.errortext,'String','Demand has passed 90% of all outputs. # of vehicles cannot be supported.');
        seg = 11;
    end
    
    if(pwr_demand1<(power_output*.9)&&seg==11)
        set(handles.errortext,'String','');
        seg = 5;
    end
    
    sum_right = 0;
    sum_left = 0;
    sum_bot = 0;
    
    plot(handles.simulation,a,c,'bx')
    xlim(handles.simulation,[-10 10])
    ylim(handles.simulation,[-10 10])
    set(handles.simulation,'XTickLabel',[],'YTickLabel',[]);
    pause(0.001)
end

set(handles.errortext,'String','The simulation has ended.');

for k = 1:round(get(handles.slider3,'Value')),
    x(k).sum_time_right = sum(x(k).tot_time_right);
    x(k).sum_time_left = sum(x(k).tot_time_left);
    x(k).sum_time_bot = sum(x(k).tot_time_bot);
    x(k).tot_charge = ((x(k).sum_time_right/240) * 240 * .05) + ((x(k).sum_time_left/240) * 240 * .05) + ((x(k).sum_time_bot/240) * 240 * .9);
end

pwr_demand_tot = 0;

for d = 1:round(get(handles.slider3,'Value')),
    pwr_demand_tot = pwr_demand_tot + x(d).tot_charge;
end
endping=wavread('gameover.wav');
endping=resample(endping,1,2);
sound(endping);
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function pwr_out_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pwr_out (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate pwr_out


% --- Executes on button press in exit_button.
function exit_button_Callback(hObject, eventdata, handles)
% hObject    handle to exit_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(handles.evsim);


% --- Executes during object creation, after setting all properties.
function simulation_CreateFcn(hObject, eventdata, handles)
% hObject    handle to simulation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate simulation


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
f=wavread('secret.wav');
f=resample(f,1,3);
sound(f);

