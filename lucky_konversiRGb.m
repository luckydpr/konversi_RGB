function varargout = lucky_konversiRGb(varargin)
% LUCKY_KONVERSIRGB MATLAB code for lucky_konversiRGb.fig
%      LUCKY_KONVERSIRGB, by itself, creates a new LUCKY_KONVERSIRGB or raises the existing
%      singleton*.
%
%      H = LUCKY_KONVERSIRGB returns the handle to a new LUCKY_KONVERSIRGB or the handle to
%      the existing singleton*.
%
%      LUCKY_KONVERSIRGB('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LUCKY_KONVERSIRGB.M with the given input arguments.
%
%      LUCKY_KONVERSIRGB('Property','Value',...) creates a new LUCKY_KONVERSIRGB or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before lucky_konversiRGb_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to lucky_konversiRGb_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help lucky_konversiRGb

% Last Modified by GUIDE v2.5 04-May-2021 16:30:46

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @lucky_konversiRGb_OpeningFcn, ...
                   'gui_OutputFcn',  @lucky_konversiRGb_OutputFcn, ...
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


% --- Executes just before lucky_konversiRGb is made visible.
function lucky_konversiRGb_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to lucky_konversiRGb (see VARARGIN)

% Choose default command line output for lucky_konversiRGb
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes lucky_konversiRGb wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = lucky_konversiRGb_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

[filename, pathname] = uigetfile({'*.jpg','*.png'});
gambar = imread([pathname, filename]);

axes(handles.axes1)
imshow(gambar);

R = gambar(:,:,1);
G = gambar(:,:,2);
B = gambar(:,:,3);

Red = cat(3,R,G*0,B*0);
Green = cat(3,R*0,G,B*0);
Blue = cat(3,R*0,G*0,B);

axes(handles.axes2);
imshow(Red);

axes(handles.axes3);
imshow(Green);

axes(handles.axes4);
imshow(Blue);



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
