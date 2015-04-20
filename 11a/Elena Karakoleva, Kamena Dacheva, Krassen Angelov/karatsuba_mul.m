% Fast multiplication algorithm
% Karatsuba multiplication
% Team: Elena Karakoleva, Kamena Dacheva, Krassen Angelov

% Enter 2 strings
% - each string contains one large number
function [result] = karatsuba_mul(first_num_str, second_num_str)
len_first_num = numel(first_num_str);
len_second_num = numel(second_num_str);
len_first_num = int64(len_first_num);
len_second_num = int64(len_second_num);

half_len_first = 0;
half_len_second = 0;
longer_num = 0; 
if (len_first_num > len_second_num)
    half_len_first = len_first_num/2;
    longer_num = 1;
else
    half_len_second = len_second_num/2;
    longer_num = 2;
end

if (longer_num == 1)
    while (half_len_first > (len_second_num-1))
        half_len_first = half_len_first - 1;
    end
    a_str = first_num_str(1:(len_first_num-half_len_first));
    b_str = first_num_str((len_first_num-half_len_first+1):len_first_num);
    c_str = second_num_str(1:len_second_num-half_len_first);
    d_str = second_num_str((len_second_num-half_len_first+1):len_second_num);

else 
    while (half_len_second > (len_first_num-1))
        half_len_second = half_len_second - 1;
    end
    a_str = first_num_str(1:(len_first_num-half_len_second)); 
    b_str = first_num_str((len_first_num-half_len_second+1):len_first_num);
    c_str = second_num_str(1:len_second_num-half_len_second);
    d_str = second_num_str((len_second_num-half_len_second+1):len_second_num);
end

a = str2num(a_str);
b = str2num(b_str);
c = str2num(c_str);
d = str2num(d_str);

% Karatsuba multiplication
% We will need it after all steps and "Gauss's trick":
% x*y = 10^n*a*c + 10^(n/2)*(a+b)*(c+d) + b*d
% -> x = first number, y = second number
% -> n/2 = half_len_first or half_len_second  
%Step 1:
step_one = a*c;
%Step 2:
step_two = b*d;
%Step 3:
step_three = (a+b)*(c+d);
% Gauss's trick: Step 3 - Step 1 - Step 2 
gauss_trick = step_three - step_one - step_two;
% And this gives to us the result of "ab + bc"
if (longer_num == 1)
    result = 10^(2*half_len_first)*step_one + 10^half_len_first*gauss_trick + step_two;
else
    result = 10^(2*half_len_second)*step_one + 10^half_len_second*gauss_trick + step_two;
end





