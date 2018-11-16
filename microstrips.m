function varargout = microstrips(varargin)
% MICROSTRIPS MATLAB code for microstrips.fig
%      MICROSTRIPS, by itself, creates a new MICROSTRIPS or raises the existing
%      singleton*.
%
%      H = MICROSTRIPS returns the handle to a new MICROSTRIPS or the handle to
%      the existing singleton*.
%
%      MICROSTRIPS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MICROSTRIPS.M with the given input arguments.
%
%      MICROSTRIPS('Property','Value',...) creates a new MICROSTRIPS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before microstrips_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to microstrips_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help microstrips

% Last Modified by GUIDE v2.5 16-Nov-2018 17:09:05

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @microstrips_OpeningFcn, ...
                   'gui_OutputFcn',  @microstrips_OutputFcn, ...
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
imshow('microstrip.jpg')

% --- Executes just before microstrips is made visible.
function microstrips_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to axes1
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to microstrips (see VARARGIN)

% Choose default command line output for microstrips
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes microstrips wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = microstrips_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to axes1
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


function textZ0_Callback(hObject, eventdata, handles)
% hObject    handle to textZ0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textZ0 as text
%        str2double(get(hObject,'String')) returns contents of textZ0 as a double
z0 = str2double(get(hObject, 'String'));
handles.metricdata.textZ0 = z0;
guidata(hObject, handles)


% --- Executes during object creation, after setting all properties.
function textZ0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textZ0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textH_Callback(hObject, eventdata, handles)
% hObject    handle to textH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textH as text
%        str2double(get(hObject,'String')) returns contents of textH as a double
contents = cellstr(get(hObject, 'String'));
pop_choice = contents(get(hObject, 'Value'));
if(strcmp(pop_choice, '0.01'))
    h = 0.01;
elseif(strcmp(pop_choice, '0.02'))
    h = 0.02;
elseif(strcmp(pop_choice, '0.03'))
    h = 0.03;
end
handles.metricdata.textH = h;
guidata(hObject, handles)
    
% --- Executes during object creation, after setting all properties.
function textH_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textEr_Callback(hObject, eventdata, handles)
% hObject    handle to textEr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textEr as text
%        str2double(get(hObject,'String')) returns contents of textEr as a double
Er = str2double(get(hObject, 'String'));
handles.metricdata.textEr = Er
guidata(hObject, handles)

% --- Executes during object creation, after setting all properties.
function textEr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textEr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function textF_Callback(hObject, eventdata, handles)
% hObject    handle to textF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textF as text
%        str2double(get(hObject,'String')) returns contents of textF as a double
f = str2double(get(hObject, 'String'));
handles.metricdata.textF = f;
guidata(hObject, handles)

% --- Executes during object creation, after setting all properties.
function textF_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function textSigma_Callback(hObject, eventdata, handles)
% hObject    handle to textSigma (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textSigma as text
%        str2double(get(hObject,'String')) returns contents of textSigma as a double
sigma = str2double(get(hObject, 'String'));
handles.metricdata.textSigma = sigma;
guidata(hObject, handles)

% --- Executes during object creation, after setting all properties.
function textSigma_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textSigma (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textAlphad_Callback(hObject, eventdata, handles)
% hObject    handle to textAlphad (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textAlphad as text
%        str2double(get(hObject,'String')) returns contents of textAlphad as a double


% --- Executes during object creation, after setting all properties.
function textAlphad_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textAlphad (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textLambda_Callback(hObject, eventdata, handles)
% hObject    handle to textLambda (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textLambda as text
%        str2double(get(hObject,'String')) returns contents of textLambda as a double


% --- Executes during object creation, after setting all properties.
function textLambda_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textLambda (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textW_Callback(hObject, eventdata, handles)
% hObject    handle to textW (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textW as text
%        str2double(get(hObject,'String')) returns contents of textW as a double


% --- Executes during object creation, after setting all properties.
function textW_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textW (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in buttonCalc.
function buttonCalc_Callback(hObject, eventdata, handles)
% hObject    handle to buttonCalc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
z0 = handles.metricdata.textZ0;
h = handles.metricdata.textH;
Er = handles.metricdata.textEr;
f = handles.metricdata.textF;
sigma = handles.metricdata.textSigma;

A = (z0/60)*sqrt((Er+1)/2) + ((Er-1)/(Er+1))*(0.23+(0.11)/(Er));
B = (377*pi)/(2*z0*sqrt(Er));

W1 = ((8*exp(A))*h)/(exp(2*A)-2);
W2 = (2000*h/pi)*(B-1-log(2*B-1)+((Er-1)/(2*Er))*(log(B-1)+0.39-(0.61/Er)));

if(((W1/h) <= 2) && ((W1/h) >= 0))
    set(handles.textW, 'String', W1);
    W = W1;
elseif((W2/h) > 2)
    set(handles.textW, 'String', W2);
    W = W2;
end

if(((W/h) > 0) && ((W/h) < 0.6))
    Lambda = (300000000/(f*sqrt(Er)))*sqrt(Er/(1+0.6*(Er-1)*(W/h)^0.0297));
    set(handles.textLambda, 'String', Lambda);
elseif((W/h) >= 0.6)
    Lambda = (300000000/(f*sqrt(Er)))*sqrt(Er/(1+0.63*(Er-1)*(W/h)^0.1255));
    set(handles.textLambda, 'String', Lambda);
end

Eeff = (Er+1)/2 + ((Er-1)/2)/sqrt(1+12*(h/W));
tanP = sigma/(2*pi*f*Er*8.854E12);

alpha_d = 27.3*(Er/sqrt(Eeff))*((Eeff-1)/(Er-1))*(tanP*f/30000000);
set(handles.textAlphad, 'String', alpha_d);
