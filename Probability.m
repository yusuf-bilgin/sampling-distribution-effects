% Reads in the data from the Excel file 'R1.xlsx' and assigns it to the variable 'data'
data = xlsread("C:\Users\yusuf\Documents\MATLAB\R1.xlsx");
R1 = 18;
my_population = data(R1, :); 

for i = 1:30
    sample_size = i;
    
    % draw a random sample of size i from the population data
    my_population = data(randi(size(data,1),i,1));
    
    % Calculate the mean and variance for each sample
    sample_mean(i) = mean(my_population);
    sample_variance(i) = var(my_population);
    fprintf('Sampling Mean (Sample Size: %d): %f\n', sample_size, sample_mean(i));
    fprintf('Sampling Variance (Sample Size: %d): %f\n', sample_size, sample_variance(i));
end
% Plot the sample mean-size
subplot(2,1,1);
plot(1:30,sample_mean);
grid minor;
title('Sample Means');
xlabel('Sample Size');
ylabel('Mean');

%Plot the sample variance-size
subplot(2,1,2);
plot(sample_variance);
grid minor;
title('Sample Variances');
xlabel('Sample Size');
ylabel('Variance');

% Mean and variance of the population
mean_of_my_population = mean(my_population);
variance_of_my_population = var(my_population);
fprintf('Mean of the Population: %f\n', mean_of_my_population);
fprintf('Variance of the Population: %f\n', variance_of_my_population);



