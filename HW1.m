%% 1. Vectors and matrices
% I worked with Isaac Pearson, Sean Bennett, and Esteli Garcia. I also went
% to office hours..

% 1. a
% I used a:b:c, where a = 1 is the start number, b = 2 is the number incrementing by, and c = 100 is the end number. The size of the vector is defined by the "size" command.
odds = 1:2:100
size1a = size(odds)

% 1. b
% I used a:b:c, similar to the problem above but instead of incrementing, it is decrementing by 50 so I put a minus sign in front of 'b' and the start number is 1000 and end number is 100. I used the "size" command.
backcounter = 1000:-50:100
size1b = size(backcounter)

% 1. c
% "Transpose" command is used for changing the horizontal vector into the vertical vector. Without this command, there would be 3 rows and many columns, which is opposite of what we want. The dot before the 'to the power of' means we are powering each element. The number of elements is determined by the "numel" command.
squares = transpose([1:0.25:20; (1:0.25:20).^2; sqrt(1:0.25:20)])
size1c = size(squares)
elements1c = numel(squares)

% I worked with Mia Kollia on this section and learned that you can use '
% to create columns.
collumn1 = 1:0.25:20;
collumn2 = collumn1.^2;
collumn3 = sqrt(collumn1);
squares = [(collumn1') (collumn2') (collumn3')]

% 1. d
% "Squares(a,b)" command, where 'a' is the row and 'b' is the column. The colon is used in 'b' for value2 because it will give the value of the square of all the numbers in the columnn instead of a specific one.
Value1 = squares(13,2)
Value2 = squares(27,:)

%% 2. Loops

% 2. a
% For loop that computes the product of all integers from 2 to 9. "Product"
% command gives the product of the value I gave to the name product
% multiplied by the value of i.
product = 2;
for i = 3:9
    product = product*i;
end
product

% Compared to the built in product function
productfxn = prod(2:9)

% 2. b
% For loop to count # of integers between 1 and 200 divisible by 7. 'For' loop and 'if' statement both require an 'end.' Mod(a,b) function gives the remainder of the 'a' divided by 'b.' Counter function adds 1 to each count if the number is able to be divided by 7. Need to end with 'counter' or else it won't give an output
counter = 0;
for i = 1:200,
    if mod(i,7) == 0
        counter = counter + 1;
    end;
end;
counter


%% 3. Coin flips

% 3. a
% Generate a random number that's either 0/1 for heads/tails. Use "randi(a:b)" command that will pick a number between a and b at random one time.
coin = randi(0:1)

% 3. b
% Flip the coin 10 times (by using a for loop) and list the number (using counter) to determine number of "heads" or 0's were in the flips
counter = 0;
for i = 1:10,
    if randi(0:1) == 0
        counter = counter + 1;
    end;
end;
counter

% 3. c
% Flip the coin 3 times (using a for loop) and display whether or not there were at least one "heads" or 0 in the 3 flips. Need to use an 'if' statement for when at random the coin flip shows heads it gets added to the count per each turn until 3 flips and another 'if' statement for when that coin flip is heads at least once it gets accounted for and displays 'yes,' but when the count is anything but greater than 1, it will display 'no.'
counter = 0;
for i = 1:3
    if (randi(0:1) == 0)
        counter = counter + 1;
    end;
end;

if (counter >=1)
    disp('yes');
else
    disp('no');
end;

%% 4. Your goals
% My goals for this class is to learn the basics of coding and to understand how coding is used in biology. In addition to my learning goals, I particularly want to understand where in biology this is applied to, such as when people work in labs, what do they do with matlab, how do they use it?

%% 5. Informational
% I spent about 4 hours on this homework with about 2 hours on my own and the other 2 hours with a group.