% Implementation of analog IIR low pass filter
clc; 
clear;
close all;
Ap=input('Enter the attentuation in passband in db :');
As=input('Enter the attentuation in Stop band in db :');
Wp=input('Enter passband edge frequency in rad :');
Ws=input('Enter Stopband edge frequency in rad :');
%N=0.5*((log10((10^(0.1*As) -1)/(10^(0.1*Ap) -1)))/((log10(Ws))/log10(Ws)));
[n,Wc]=buttord(Wp,Ws,Ap,As);
disp The order of filter is:;
disp(n);
disp The cutoff frequency is in rad:;
disp(Wc);
fc=Wc/(2*pi);
[num,den]=butter(n,Wc,'low','s');
w=0:200:5000*pi;
h=freqs(num,den,w);
m=20*log(abs(h));
subplot(2,1,1);
plot(w/2*pi,m);
grid on;
xlabel('Freq in Hz');
ylabel('Magnitude in db');
title('Magnitude response');
an=angle(h);
subplot(2,1,2);
plot(w/2*pi,an);
grid on;
xlabel('Freq in Hz');
ylabel('Phase');
title('Phase response');

