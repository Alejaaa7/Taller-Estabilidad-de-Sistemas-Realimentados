%% Lugar de las raíces

GH = tf([1 2 1], [1 0.2 1 1]);

% Gráficas

figure
rlocus(GH)
title('Lugar de las Raíces')

figure
rlocus(-GH)
title('Lugar de las Raíces Complementario')

% Para verificar con rlocus

k = [-1, -0.7403, -0.2, 0, 0.3, 0.5403124, 1, 2];
[R,~] = rlocus(GH, k)

% Parte real de los polos (degine la estabilidad en continuo: Re < 0
% estable)
real(R)

% Parte imaginaria de los polos (frecuencia del cruce, si la hay)
imag(R)

%% Bode

figure
bode(GH)
grid on

[mag, fase] = bode(GH, 1.4425);
mag_dB = 20*log10(mag)
fase

%% Nyquist

figure
nyquist(GH)

[re, im] = nyquist(GH, 1.4425);
re, im