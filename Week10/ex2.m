experiment = importdata('radioactivedecay.dat')
t = experiment.data(:,1);
N = experiment.data(:,2);
figure(42)
plot(t,N,'.b')
hold on
% function to fit 
fun = @(A,b,x) A.*exp(b.*x);
fittedmodel = fit(t,N,fun,'StartPoint',[1,1])
plot(fittedmodel,'r-');
hold off