function encrypted_message = caesar_cipher(message, shift) % Applies Caesar cipher encryption to a lowercase message
    % Shift the message characters by the given shift value (1-25)
    % Make the shift value between 1 and 25
    shift = mod(shift, 26); % Result always ranges 0-25
  
    encrypted_message = '';  % Starts an empty string for the encrypted message
    
    % Loop through each character in the message
    for i = 1:length(message)
        char_val = double(message(i)); % Get ASCII value of character
        
        % Check if the character is a lowercase letter
        if char_val >= 97 && char_val <= 122
            new_char = char_val + shift; % Apply the shift
            
            % If the shift exceeds 'z', wrap around to 'a':
            if new_char > 122
                new_char = new_char - 26;
            end
            
            encrypted_message = [encrypted_message, char(new_char)]; % Append to the encrypted message
        else
            % If not a lowercase letter, just append the character as is
            encrypted_message = [encrypted_message, message(i)];
        end
    end
end