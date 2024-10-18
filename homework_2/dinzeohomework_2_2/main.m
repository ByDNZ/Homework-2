% Author Name: Lucius Dinzeo
% Email: dinzeo22@students.rowan.edu
% Created On: 09/27/2024
% Updated On: 10/11/2024
% Update By: Dinzeo
% All rights are reserved - MIT License
% Title: Homework 2.1

% 2 - Simple Encryption Function
% a) Create a function named `caesar_cipher` that takes two inputs:
%   - A string of lowercase letters (the message to encrypt)
%   - An integer shift value between 1 and 25
%   The function should return the encrypted message using the Caesar cipher method.


% b) In the main script:
% Prompt the user to enter a message and a shift value.
message = input('Enter a message to encrypt (lowercase letters only): ', 's');
                % 's' tells matlab to take input string exactly as entered
                    % rather than evauluating it as a mathematical expression
shift = input('Enter a shift value (1-25): ');

% Call the `caesar_cipher` function with these inputs.
encrypted_message = caesar_cipher(message, shift);

% Print the original message and the encrypted message.
fprintf('Original Message: %s\n', message);
fprintf('Encrypted Message: %s\n', encrypted_message);