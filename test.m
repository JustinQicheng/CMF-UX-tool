
function input()

KbName('UnifyKeyNames');
escapeKey = KbName('escape');
Key(1)=KbName('Z');
Key(2)=KbName('M');
Fcn_inputName(answer);
if isempty(answer)==1
    msgbox('You just canceled this test!')
    pause(1);
    return;
end
while strcmp('����ƴ��',answer{1})== 1 || strcmp('Ů=1����=2',answer{2})== 1;
    msgbox('Please Check and Input Your Name or Your Gender Again!')
    Fcn_inputName()   
end


disp(answer)


end

function answer = Fcn_inputName(answer)
prompt={'�����������','��������Ա�'};
name='Basic Information';
numlines=1;
defaultanswer={'����ƴ��','Ů=1����=2'};
options.Resize='on';
options.WindowStyle='normal';
options.Interpreter='tex';
answer=inputdlg(prompt,name,numlines,defaultanswer)
end
