
# Returns true if the character is in the uppercase range
def in_lowercase_range?(char)
    char.ord.between?(97, 122)
end

# Returns true if the character is in the lowercase range
def in_uppercase_range?(char)
    char.ord.between?(65, 90)
end

# Returns true if char.ord is within the range
# of either lowercase or uppercase letters
def valid_letter?(char)
    in_lowercase_range?(char) || in_uppercase_range?(char)
end

def modified_char(char, shift_factor)
    base = in_uppercase_range?(char) ? 65 : 97

    new_code = (((char.ord - base) + shift_factor) % 26) + base

    new_code.chr
end

def caesar_cipher(string, shift_factor)
    chars = string.chars

    modified_string = string.chars.map do |char|
        # Apply the mapping if the current character is a letter
        valid_letter?(char) ? modified_char(char, shift_factor) : char
    end

    modified_string.join ""
end

print caesar_cipher("What a string!", 5)