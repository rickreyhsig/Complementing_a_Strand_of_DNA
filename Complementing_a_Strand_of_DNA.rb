#!/usr/bin/env ruby

# Obtain file contents
file_content = ARGV[0]

# Place file content in file variable
file = File.open(file_content, "r")

# Read file contents and place it inside variable
dna_sequence = file.read

# Reverse the sequence
dna_sequence.reverse!

reverse_complement_strand = ''

# Complement each base ( A <=> T and C <=> G )
dna_sequence.each_char do |ch|
    if ( ch == "A" || ch == "a" )
      reverse_complement_strand += 'T'
    elsif ( ch == "C" || ch == "c" )
      reverse_complement_strand += 'G'
    elsif ( ch == "G" || ch == "g" )
      reverse_complement_strand += 'C'
    elsif ( ch == "T" || ch == "t" )
      reverse_complement_strand += 'A'
    end
end

puts reverse_complement_strand

file.close

