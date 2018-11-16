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

% Last Modified by GUIDE v2.5 14-Nov-2018 21:24:18

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


% --- Executes just before microstrips is made visible.
function microstrips_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
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
% hObject    handle to figure
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
handles.metricdata.textZ0 = z0
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
h = str2double(get(hObject, 'String'));
handles.metricdata.textH = h
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
