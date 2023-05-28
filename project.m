function varargout = project(varargin)
% PROJECT MATLAB code for project.fig
%      PROJECT, by itself, creates a new PROJECT or raises the existing
%      singleton*.
%
%      H = PROJECT returns the handle to a new PROJECT or the handle to
%      the existing singleton*.
%
%      PROJECT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROJECT.M with the given count arguments.
%
%      PROJECT('Property','Value',...) creates a new PROJECT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before project_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to project_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help project

% Last Modified by GUIDE v2.5 20-May-2023 08:39:09

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @project_OpeningFcn, ...
                   'gui_OutputFcn',  @project_OutputFcn, ...
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


% --- Executes just before project is made visible.
function project_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to project (see VARARGIN)

% Choose default command line output for project
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes project wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = project_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in show.
function show_Callback(hObject, eventdata, handles)
% hObject    handle to show (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
datatabel = readcell('Crop.csv', 'range', 'A2:H500');
set(handles.table, 'ColumnName', {"Nitrogen","Phosphorous","Pottasium","Temperature","Humidity","PH","Rainfall","Label"});
set(handles.table, 'data', datatabel);



function nn_Callback(hObject, eventdata, handles)
% hObject    handle to nn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nn as text
%        str2double(get(hObject,'String')) returns contents of nn as a double


% --- Executes during object creation, after setting all properties.
function nn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function np_Callback(hObject, eventdata, handles)
% hObject    handle to np (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of np as text
%        str2double(get(hObject,'String')) returns contents of np as a double


% --- Executes during object creation, after setting all properties.
function np_CreateFcn(hObject, eventdata, handles)
% hObject    handle to np (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function nk_Callback(hObject, eventdata, handles)
% hObject    handle to nk (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nk as text
%        str2double(get(hObject,'String')) returns contents of nk as a double


% --- Executes during object creation, after setting all properties.
function nk_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nk (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pn_Callback(hObject, eventdata, handles)
% hObject    handle to pn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pn as text
%        str2double(get(hObject,'String')) returns contents of pn as a double


% --- Executes during object creation, after setting all properties.
function pn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pp_Callback(hObject, eventdata, handles)
% hObject    handle to pp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pp as text
%        str2double(get(hObject,'String')) returns contents of pp as a double


% --- Executes during object creation, after setting all properties.
function pp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pk_Callback(hObject, eventdata, handles)
% hObject    handle to pk (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pk as text
%        str2double(get(hObject,'String')) returns contents of pk as a double


% --- Executes during object creation, after setting all properties.
function pk_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pk (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function kn_Callback(hObject, eventdata, handles)
% hObject    handle to kn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of kn as text
%        str2double(get(hObject,'String')) returns contents of kn as a double


% --- Executes during object creation, after setting all properties.
function kn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to kn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function kp_Callback(hObject, eventdata, handles)
% hObject    handle to kp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of kp as text
%        str2double(get(hObject,'String')) returns contents of kp as a double


% --- Executes during object creation, after setting all properties.
function kp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to kp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function kk_Callback(hObject, eventdata, handles)
% hObject    handle to kk (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of kk as text
%        str2double(get(hObject,'String')) returns contents of kk as a double


% --- Executes during object creation, after setting all properties.
function kk_CreateFcn(hObject, eventdata, handles)
% hObject    handle to kk (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in count.
function count_Callback(hObject, eventdata, handles)
% hObject    handle to count (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
nn = str2double(get(handles.nn, 'String'));
pn = str2double(get(handles.pn, 'String'));
kn = str2double(get(handles.kn, 'String'));
np = str2double(get(handles.np, 'String'));
pp = str2double(get(handles.pp, 'String'));
kp = str2double(get(handles.kp, 'String'));
nk = str2double(get(handles.nk, 'String'));
pk = str2double(get(handles.pk, 'String'));
kk = str2double(get(handles.kk, 'String'));

MPBk = [nn np nk;
        pn pp pk;
        kn kp kk]
sM = sum(MPBk);
w_MPB = MPBk./sM;
[m n] = size(w_MPB);
   for i=1 : m,
       sumRow = 0;
       for j=1 : n,
           sumRow = sumRow + w_MPB(i,j);
       end;
   V(i)=(sumRow);
   end;
   
   w_MPB = transpose(V)/m
   
opts = detectImportOptions('Crop.csv');
opts.SelectedVariableNames = (1);
bacan = readmatrix('Crop.csv',opts);

mat = [bacan]
sM = sum(mat);
w_n = mat./sM;

opts = detectImportOptions('Crop.csv');
opts.SelectedVariableNames = (2);
bacap = readmatrix('Crop.csv',opts);

matt = [bacap]
sM = sum(matt);
w_p = matt./sM;

opts = detectImportOptions('Crop.csv');
opts.SelectedVariableNames = (3);
bacak = readmatrix('Crop.csv',opts);

mattt = [bacak]
sM = sum(mattt);
w_k = mattt./sM;

wM = [w_n w_p w_k];

MC_score = wM * w_MPB

point = max(MC_score)
set(handles.rank,'String',point);

[urut, index] = sort(MC_score,'descend');
i=index(1:10);
j=index(1);
hasil = index(1);

opts = detectImportOptions('Crop.csv');
opts.SelectedVariableNames = (8);
tamp = readcell('Crop.csv',opts);
r=tamp(j);
set(handles.label,'String',r);

axes(handles.axes1);
image(imread(strcat(r, ".jpg")));
grid off;
axis off;

opts = detectImportOptions('Crop.csv');
opts.SelectedVariableNames = (1:8);
tampil = readcell('Crop.csv',opts);
result=tampil(i,:);
set(handles.rtabel,'ColumnName',["Nitrogen","Phosphorous","Pottasium","Temperature","Humidity","PH","Rainfall","Label"]);
set(handles.rtabel,'data',result);



function rank_Callback(hObject, eventdata, handles)
% hObject    handle to rank (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rank as text
%        str2double(get(hObject,'String')) returns contents of rank as a double


% --- Executes during object creation, after setting all properties.
function rank_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rank (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function clear_Callback(hObject, eventdata, handles)
% hObject    handle to clear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.table, 'data', '');


% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.pn, 'String', '');
set(handles.kn, 'String', '');
set(handles.np, 'String', '');
set(handles.kp, 'String', '');
set(handles.nk, 'String', '');
set(handles.pk, 'String', '');



function label_Callback(hObject, eventdata, handles)
% hObject    handle to label (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of label as text
%        str2double(get(hObject,'String')) returns contents of label as a double


% --- Executes during object creation, after setting all properties.
function label_CreateFcn(hObject, eventdata, handles)
% hObject    handle to label (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function kal_Callback(hObject, eventdata, handles)
% hObject    handle to kal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of kal as text
%        str2double(get(hObject,'String')) returns contents of kal as a double


% --- Executes during object creation, after setting all properties.
function kal_CreateFcn(hObject, eventdata, handles)
% hObject    handle to kal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in kalkulator.
function kalkulator_Callback(hObject, eventdata, handles)
% hObject    handle to kalkulator (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
kal = str2double(get(handles.kal, 'String'));

hs = 1/kal;

set(handles.hsk,'String',hs);
