% Zhtoymeno 1
clf;
figure;
hold on;
xlim([-0.5 0.5])
ylim([-0.5 0.5])
grid on;
% Oi tesseris mprostines koryfes
vAf = [-2 -0.5 5];
vBf = [-2 0.5 5];
vCf = [-1 0.5 5];
vDf = [-1 -0.5 5];
% Oi tesseris pisw koryfes
vAb = [-2 -0.5 6];
vBb = [-2 0.5 6];
vCb = [-1 0.5 6];
vDb = [-1 -0.5 6];
% H mprostinh edra
drawLine(projectVertex(vAf), projectVertex(vBf), 'blue');
drawLine(projectVertex(vBf), projectVertex(vCf), 'blue');
drawLine(projectVertex(vCf), projectVertex(vDf), 'blue');
drawLine(projectVertex(vDf), projectVertex(vAf), 'blue');
% H pisw edra
drawLine(projectVertex(vAb), projectVertex(vBb), 'red');
drawLine(projectVertex(vBb), projectVertex(vCb), 'red');
drawLine(projectVertex(vCb), projectVertex(vDb), 'red');
drawLine(projectVertex(vDb), projectVertex(vAb), 'red');
% H plaines edres
drawLine(projectVertex(vAf), projectVertex(vAb), 'green');
drawLine(projectVertex(vBf), projectVertex(vBb), 'green');
drawLine(projectVertex(vCf), projectVertex(vCb), 'green');
drawLine(projectVertex(vDf), projectVertex(vDb), 'green');
function drawLine(v1, v2, color)
    line([v1(1) v2(1)], [v1(2) v2(2)], 'color', color)
end
function res = projectVertex(v)
f=0.1;
    x=f*v(1)/v(3);
    y=f*v(2)/v(3);
    res = [x,y]
    % Ypologisame tis syntetagmenes toy sxhmatos sto epipedo kai ta
    % epeikonisame sto diplano sxhma. 
end