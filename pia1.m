function varargout = pia1(varargin)
% PIA1 MATLAB code for pia1.fig
%      PIA1, by itself, creates a new PIA1 or raises the existing
%      singleton*.
%
%      H = PIA1 returns the handle to a new PIA1 or the handle to
%      the existing singleton*.
%
%      PIA1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PIA1.M with the given input arguments.
%
%      PIA1('Property','Value',...) creates a new PIA1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before pia1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to pia1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help pia1

% Last Modified by GUIDE v2.5 12-May-2019 18:37:03

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @pia1_OpeningFcn, ...
                   'gui_OutputFcn',  @pia1_OutputFcn, ...
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


% --- Executes just before pia1 is made visible.
function pia1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to pia1 (see VARARGIN)

% Choose default command line output for pia1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

initialize_gui(hObject, handles, false);

% UIWAIT makes pia1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = pia1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
%--------------------------------------------------------------------------


% --- Executes during object creation, after setting all properties.
function L_CreateFcn(hObject, eventdata, handles)
% hObject    handle to L (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function L_Callback(hObject, eventdata, handles)
% hObject    handle to L (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of L as text
%        str2double(get(hObject,'String')) returns contents of L as a double
L = str2double(get(hObject, 'String'));

% Save the new length value
handles.metricdata.L = L;
guidata(hObject,handles)

%--------------------------------------------------------------------------

% --- Executes during object creation, after setting all properties.
function D_CreateFcn(hObject, eventdata, handles)
% hObject    handle to D (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function D_Callback(hObject, eventdata, handles)
% hObject    handle to D (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of D as text
%        str2double(get(hObject,'String')) returns contents of D as a double
D = str2double(get(hObject, 'String'));

% Save the new diameter value
handles.metricdata.D = D;
guidata(hObject,handles)

%--------------------------------------------------------------------------

% --- Executes during object creation, after setting all properties.
function V_CreateFcn(hObject, eventdata, handles)
% hObject    handle to V (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function V_Callback(hObject, eventdata, handles)
% hObject    handle to V (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of V as text
%        str2double(get(hObject,'String')) returns contents of V as a double
V = str2double(get(hObject, 'String'));

% Save the new velocity value
handles.metricdata.V = V;
guidata(hObject,handles)

%--------------------------------------------------------------------------

% --- Executes during object creation, after setting all properties.
function f_CreateFcn(hObject, eventdata, handles)
% hObject    handle to f (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function f_Callback(hObject, eventdata, handles)
% hObject    handle to f (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of f as text
%        str2double(get(hObject,'String')) returns contents of f as a double
f = str2double(get(hObject, 'String'));

% Save the new friction factor value
handles.metricdata.f = f;
guidata(hObject,handles)

%--------------------------------------------------------------------------

% --- Executes during object creation, after setting all properties.
function hf_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function hf_Callback(hObject, eventdata, handles)
% hObject    handle to hf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hf as text
%        str2double(get(hObject,'String')) returns contents of hf as a double
hf = str2double(get(hObject, 'String'));

% Save the new friction losses value
handles.metricdata.hf = hf;
guidata(hObject,handles)

%--------------------------------------------------------------------------

% --- Executes during object creation, after setting all properties.
function NR_CreateFcn(hObject, eventdata, handles)
% hObject    handle to NR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function NR_Callback(hObject, eventdata, handles)
% hObject    handle to NR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of NR as text
%        str2double(get(hObject,'String')) returns contents of NR as a double
NR = str2double(get(hObject, 'String'));

% Save the new Reynolds Number value
handles.metricdata.NR = NR;
guidata(hObject,handles)

%--------------------------------------------------------------------------

% --- Executes during object creation, after setting all properties.
function Q_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Q (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Q_Callback(hObject, eventdata, handles)
% hObject    handle to Q (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Q as text
%        str2double(get(hObject,'String')) returns contents of Q as a double
Q = str2double(get(hObject, 'String'));

% Save the new flow value
handles.metricdata.Q = Q;
guidata(hObject,handles)

%--------------------------------------------------------------------------

% --- Executes during object creation, after setting all properties.
function delta_CreateFcn(hObject, eventdata, handles)
% hObject    handle to delta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function delta_Callback(hObject, eventdata, handles)
% hObject    handle to delta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of delta as text
%        str2double(get(hObject,'String')) returns contents of delta as a double
delta = str2double(get(hObject, 'String'));

% Save the new density value
handles.metricdata.delta = delta;
guidata(hObject,handles)

%--------------------------------------------------------------------------

% --- Executes during object creation, after setting all properties.
function nu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function nu_Callback(hObject, eventdata, handles)
% hObject    handle to nu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nu as text
%        str2double(get(hObject,'String')) returns contents of nu as a double
nu = str2double(get(hObject, 'String'));

% Save the new cinematic viscosity value
handles.metricdata.nu = nu;
guidata(hObject,handles)

%--------------------------------------------------------------------------

% --- Executes during object creation, after setting all properties.
function mu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','grey');
end

function mu_Callback(hObject, eventdata, handles)
% hObject    handle to mu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of mu as text
%        str2double(get(hObject,'String')) returns contents of mu as a double
mu = str2double(get(hObject, 'String'));

% Save the new absolute viscosity value
handles.metricdata.mu = mu;
guidata(hObject,handles)

%--------------------------------------------------------------------------

% --- Executes during object creation, after setting all properties.
function epsilon_CreateFcn(hObject, eventdata, handles)
% hObject    handle to epsilon (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function epsilon_Callback(hObject, eventdata, handles)
% hObject    handle to epsilon (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of epsilon as text
%        str2double(get(hObject,'String')) returns contents of epsilon as a double
epsilon = str2double(get(hObject, 'String'));

% Save the new absolute viscosity value
handles.metricdata.epsilon = epsilon;
guidata(hObject,handles)

%--------------------------------------------------------------------------

% --- Executes on button press in calculo.
function calculo_Callback(hObject, eventdata, handles)
% hObject    handle to calculo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%despeje de ecuaciones para soluciones






%continua comando

% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

initialize_gui(gcbf, handles, true);

% --------------------------------------------------------------------
function initialize_gui(fig_handle, handles, isreset)
% If the metricdata field is present and the reset flag is false, it means
% we are we are just re-initializing a GUI by calling it from the cmd line
% while it is up. So, bail out as we dont want to reset the data.
if isfield(handles, 'metricdata') && ~isreset
    return;
end

handles.metricdata.L = 0;
handles.metricdata.D = 0;
handles.metricdata.V = 0;
handles.metricdata.f = 0;
handles.metricdata.hf = 0;
handles.metricdata.epsilon = 0;
handles.metricdata.NR = 0;
handles.metricdata.Q = 0;
handles.metricdata.delta = 0;
handles.metricdata.nu = 0;
handles.metricdata.mu = 0;

set(handles.L, 'String', handles.metricdata.L);
set(handles.D,  'String', handles.metricdata.D);
set(handles.V,  'String', handles.metricdata.V);
set(handles.f,  'String', handles.metricdata.f);
set(handles.hf,  'String', handles.metricdata.hf);
set(handles.epsilon,  'String', handles.metricdata.epsilon);
set(handles.NR,  'String', handles.metricdata.NR);
set(handles.Q,  'String', handles.metricdata.Q);
set(handles.delta,  'String', handles.metricdata.delta);
set(handles.nu,  'String', handles.metricdata.nu);
set(handles.mu,  'String', handles.metricdata.mu);


% Update handles structure
guidata(handles.figure1, handles);

% --------------------------------------------------------------------
