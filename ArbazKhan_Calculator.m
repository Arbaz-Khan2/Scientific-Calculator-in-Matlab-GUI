function varargout = ArbazKhan_Calculator(varargin)
% ARBAZKHAN_CALCULATOR MATLAB code for ArbazKhan_Calculator.fig
%      ARBAZKHAN_CALCULATOR, by itself, creates a new ARBAZKHAN_CALCULATOR or raises the existing
%      singleton*.
%
%      H = ARBAZKHAN_CALCULATOR returns the handle to a new ARBAZKHAN_CALCULATOR or the handle to
%      the existing singleton*.
%
%      ARBAZKHAN_CALCULATOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ARBAZKHAN_CALCULATOR.M with the given input arguments.
%
%      ARBAZKHAN_CALCULATOR('Property','Value',...) creates a new ARBAZKHAN_CALCULATOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ArbazKhan_Calculator_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ArbazKhan_Calculator_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ArbazKhan_Calculator

% Last Modified by GUIDE v2.5 11-Aug-2021 17:01:52

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @ArbazKhan_Calculator_OpeningFcn, ...
    'gui_OutputFcn',  @ArbazKhan_Calculator_OutputFcn, ...
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


% --- Executes just before ArbazKhan_Calculator is made visible.
function ArbazKhan_Calculator_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ArbazKhan_Calculator (see VARARGIN)

% Choose default command line output for ArbazKhan_Calculator
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ArbazKhan_Calculator wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ArbazKhan_Calculator_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function Screen_Callback(hObject, eventdata, handles)
% hObject    handle to Screen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Screen as text
%        str2double(get(hObject,'String')) returns contents of Screen as a double


% --- Executes during object creation, after setting all properties.
function Screen_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Screen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in CscXButton.
function CscXButton_Callback(hObject, eventdata, handles)
% hObject    handle to CscXButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.Screen, 'String', num2str(1/sin(str2num(get(handles.Screen, 'String')))));  % calculate csc


% --- Executes on button press in XSquareButton.
function XSquareButton_Callback(hObject, eventdata, handles)
% hObject    handle to XSquareButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.Screen, 'String', num2str(str2num(get(handles.Screen, 'String'))^2));  % calculate square


% --- Executes on button press in SquareRootButton.
function SquareRootButton_Callback(hObject, eventdata, handles)
% hObject    handle to SquareRootButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if str2num(get(handles.Screen, 'String')) < 0  % if user enters a negative value
    set(handles.Screen, 'String','Math ERROR');
else
    set(handles.Screen, 'String', num2str(sqrt(str2num(get(handles.Screen, 'String')))));  % calculate square root
end


% --- Executes on button press in XPowerYButton.
function XPowerYButton_Callback(hObject, eventdata, handles)
% hObject    handle to XPowerYButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Power Selector
Power = str2num(get(handles.Screen, 'String'));  % get number from screen
Selector = 5;
set(handles.Screen, 'String', ''); % set number on screen

% --- Executes on button press in TenPowerXButton.
function TenPowerXButton_Callback(hObject, eventdata, handles)
% hObject    handle to TenPowerXButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.Screen, 'String', num2str(10^(str2num(get(handles.Screen, 'String'))))); % calculate 10^x


% --- Executes on button press in LogButton.
function LogButton_Callback(hObject, eventdata, handles)
% hObject    handle to LogButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.Screen, 'String', num2str(log10(str2num(get(handles.Screen, 'String'))))); % calculate log


% --- Executes on button press in SinXButton.
function SinXButton_Callback(hObject, eventdata, handles)
% hObject    handle to SinXButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.Screen, 'String', num2str(sin(str2num(get(handles.Screen, 'String'))))); % calculate sin



% --- Executes on button press in LnButton.
function LnButton_Callback(hObject, eventdata, handles)
% hObject    handle to LnButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.Screen, 'String', num2str(log(str2num(get(handles.Screen, 'String'))))); % calculate Ln


% --- Executes on button press in SecXButton.
function SecXButton_Callback(hObject, eventdata, handles)
% hObject    handle to SecXButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.Screen, 'String', num2str(1/cos(str2num(get(handles.Screen, 'String')))));  % calculate sec


% --- Executes on button press in OneDivideX.
function OneDivideX_Callback(hObject, eventdata, handles)
% hObject    handle to OneDivideX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.Screen, 'String', num2str(1/(str2num(get(handles.Screen, 'String')))));  % calculate 1/x


% --- Executes on button press in OpenBraket.
function OpenBraket_Callback(hObject, eventdata, handles)
% hObject    handle to OpenBraket (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(handles.Screen, 'String'); % get number from screen
set(handles.Screen, 'String', strcat(S, '(')); % set number on screen


% --- Executes on button press in Number7.
function Number7_Callback(hObject, eventdata, handles)
% hObject    handle to Number7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(handles.Screen, 'String'); % get number from screen
set(handles.Screen, 'String', strcat(S, '7')); % set number on screen

% --- Executes on button press in Number4.
function Number4_Callback(hObject, eventdata, handles)
% hObject    handle to Number4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

S = get(handles.Screen, 'String'); % get number from screen
set(handles.Screen, 'String', strcat(S, '4')); % set number on screen

% --- Executes on button press in Number1.
function Number1_Callback(hObject, eventdata, handles)
% hObject    handle to Number1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(handles.Screen, 'String'); % get number from screen
set(handles.Screen, 'String', strcat(S, '1')); % set number on screen

% --- Executes on button press in CosXButton.
function CosXButton_Callback(hObject, eventdata, handles)
% hObject    handle to CosXButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.Screen, 'String', num2str(cos(str2num(get(handles.Screen, 'String'))))); % calculte cos

% --- Executes on button press in PlusMinusButton.
function PlusMinusButton_Callback(hObject, eventdata, handles)
% hObject    handle to PlusMinusButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.Screen, 'String', num2str(-1 * (str2num(get(handles.Screen, 'String')))));  % change sign

% --- Executes on button press in CotXButton.
function CotXButton_Callback(hObject, eventdata, handles)
% hObject    handle to CotXButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.Screen, 'String', num2str(1/tan(str2num(get(handles.Screen, 'String'))))); % calculate cot


% --- Executes on button press in AbsoluteOfX.
function AbsoluteOfX_Callback(hObject, eventdata, handles)
% hObject    handle to AbsoluteOfX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.Screen, 'String', num2str(abs(str2num(get(handles.Screen, 'String'))))); % abslote value


% --- Executes on button press in CloseBraket.
function CloseBraket_Callback(hObject, eventdata, handles)
% hObject    handle to CloseBraket (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(handles.Screen, 'String'); % get number from screen
set(handles.Screen, 'String', strcat(S, ')')); % set number on screen


% --- Executes on button press in Number8.
function Number8_Callback(hObject, eventdata, handles)
% hObject    handle to Number8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(handles.Screen, 'String'); % get number from screen
set(handles.Screen, 'String', strcat(S, '8')); % set number on screen

% --- Executes on button press in Number5.
function Number5_Callback(hObject, eventdata, handles)
% hObject    handle to Number5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(handles.Screen, 'String'); % get number from screen
set(handles.Screen, 'String', strcat(S, '5')); % set number on screen

% --- Executes on button press in Number2.
function Number2_Callback(hObject, eventdata, handles)
% hObject    handle to Number2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(handles.Screen, 'String'); % get number from screen
set(handles.Screen, 'String', strcat(S, '2')); % set number on screen

% --- Executes on button press in TanXButton.
function TanXButton_Callback(hObject, eventdata, handles)
% hObject    handle to TanXButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.Screen, 'String', num2str(tan(str2num(get(handles.Screen, 'String'))))); % calculte tan


% --- Executes on button press in NumberZero.
function NumberZero_Callback(hObject, eventdata, handles)
% hObject    handle to NumberZero (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(handles.Screen, 'String'); % get number from screen
set(handles.Screen, 'String', strcat(S, '0')); % set number on screen


% --- Executes on button press in CubicPowerButton.
function CubicPowerButton_Callback(hObject, eventdata, handles)
% hObject    handle to CubicPowerButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.Screen, 'String', num2str(str2num(get(handles.Screen, 'String'))^3));  % calculate x^3


% --- Executes on button press in Exponent.
function Exponent_Callback(hObject, eventdata, handles)
% hObject    handle to Exponent (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Exponent Selector
Exponent = str2num(get(handles.Screen, 'String')); % get number from screen
Selector = 7;
set(handles.Screen, 'String', ''); % set number on screen

% --- Executes on button press in NFactorial.
function NFactorial_Callback(hObject, eventdata, handles)
% hObject    handle to NFactorial (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.Screen, 'String', num2str(factorial(str2num(get(handles.Screen, 'String'))))); % calculate factorial


% --- Executes on button press in Number9.
function Number9_Callback(hObject, eventdata, handles)
% hObject    handle to Number9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(handles.Screen, 'String'); % get number from screen
set(handles.Screen, 'String', strcat(S, '9')); % set number on screen

% --- Executes on button press in Number6.
function Number6_Callback(hObject, eventdata, handles)
% hObject    handle to Number6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(handles.Screen, 'String'); % get number from screen
set(handles.Screen, 'String', strcat(S, '6')); % set number on screen

% --- Executes on button press in Number3.
function Number3_Callback(hObject, eventdata, handles)
% hObject    handle to Number3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(handles.Screen, 'String'); % get number from screen
set(handles.Screen, 'String', strcat(S, '3')); % set number on screen

% --- Executes on button press in EButton.
function EButton_Callback(hObject, eventdata, handles)
% hObject    handle to EButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if strcmp(get(handles.Screen, 'String'), '')
    set(handles.Screen, 'String', '2.71828'); % set number on screen
end

% --- Executes on button press in Dot.
function Dot_Callback(hObject, eventdata, handles)
% hObject    handle to Dot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if not(strcmp(get(handles.Screen, 'String'), ''))% condition for comparison
    num = get(handles.Screen, 'String');
    set(handles.Screen, 'String', strcat(num, '.')); % puts decimal
end %ends if


% --- Executes on button press in PiButton.
function PiButton_Callback(hObject, eventdata, handles)
% hObject    handle to PiButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if strcmp(get(handles.Screen, 'String'), '')
    set(handles.Screen, 'String', '3.14');
end


% --- Executes on button press in Mod.
function Mod_Callback(hObject, eventdata, handles)
% hObject    handle to Mod (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Mod Selector
Mod = str2num(get(handles.Screen, 'String'));
Selector = 6;
set(handles.Screen, 'String', '');

% --- Executes on button press in Division.
function Division_Callback(hObject, eventdata, handles)
% hObject    handle to Division (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Division Selector
Division = str2num(get(handles.Screen, 'String'));
Selector = 1;
set(handles.Screen, 'String', '');


% --- Executes on button press in multiplay.
function multiplay_Callback(hObject, eventdata, handles)
% hObject    handle to multiplay (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Multiplay Selector
Multiplay = str2num(get(handles.Screen, 'String'));
Selector = 2;
set(handles.Screen, 'String', '');

% --- Executes on button press in Minus.
function Minus_Callback(hObject, eventdata, handles)
% hObject    handle to Minus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Minus Selector
if strcmp(get(handles.Screen, 'String'), '')
    set(handles.Screen, 'String', '-');
else
    Minus = str2num(get(handles.Screen, 'String'));
    Selector = 3;
    set(handles.Screen, 'String', '');
end


% --- Executes on button press in Plus.
function Plus_Callback(hObject, eventdata, handles)
% hObject    handle to Plus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Plus Selector
Plus = str2num(get(handles.Screen, 'String'));
Selector = 4;
set(handles.Screen, 'String', '');


% --- Executes on button press in ClearAll.
function ClearAll_Callback(hObject, eventdata, handles)
% hObject    handle to ClearAll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.Screen, 'String', ''); % clear screen


% --- Executes on button press in Equal.
function Equal_Callback(hObject, eventdata, handles)
% hObject    handle to Equal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Division Multiplay Minus Plus Power Mod Exponent Selector
switch Selector
    case 1
        Division = Division/str2num(get(handles.Screen, 'String'));  % calculate division
        set(handles.Screen, 'String', num2str(Division));
    case 2
        Multiplay = Multiplay *str2num(get(handles.Screen, 'String')); % calculate multiplay
        set(handles.Screen, 'String', num2str(Multiplay));
    case 3
        Minus = Minus - str2num(get(handles.Screen, 'String')); % calculate minus
        set(handles.Screen, 'String', num2str(Minus));
    case 4
        Plus = Plus + str2num(get(handles.Screen, 'String')); % calculate addition
        set(handles.Screen, 'String', num2str(Plus));
    case 5
        Power = Power^str2num(get(handles.Screen, 'String'));  % calculate power
        set(handles.Screen, 'String', num2str(Power));
    case 6
        Mod = mod(Mod, str2num(get(handles.Screen, 'String'))); % calculate mod
        set(handles.Screen, 'String', num2str(Mod));
    case 7
        Exponent = Exponent * (10^str2num(get(handles.Screen, 'String'))); % calculate exponent
        set(handles.Screen, 'String', num2str(Exponent));
end
