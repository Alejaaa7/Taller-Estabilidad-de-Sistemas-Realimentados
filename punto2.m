GH=tf([1 2 1], [1 0.2 1 1], -1); %Ganancia del lazo abierto




%% Lugar de las raices

rlocus(GH); %Grafico LR
rlocus(-GH); %Grafico LRC

k=[-2, -1, -0.8, -2/7, 0, 0.4]; %Valores de ganancia calculados

R=rlocus(GH,k); %posición polos para cada ganacia de k

w=angle([0.4000 + 0.9165i, 0.4000 - 0.9165i, 1.0000 + 0.0000i]); %frecuencia polos

%% Bode

bode(GH); % Grafica

[mag, phase]=bode(GH,w); %

k=1/mag; %comprobar los valores de k

%% Nyquist

nyquist(GH); %grafico

[Re, Im]=nyquist(GH,w); %Corte con el eje horizontal
