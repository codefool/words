#!/usr/bin/perl
#
# This script takes as input a word list file and performes the following:
# 1. Strip off identifying annotation characters
# :	The word is an otherwise unmarked abbreviation. This suffix may 
#       appear in combination with another suffix.
# &	The word is primarily a non-American usage.
# #	The word is generally held to be a variant or less preferred form 
#       of another word.
# <	This form of a word is held to be the primary form by fewer 
#       dictionaries than some other form of the word.
# ^	This form of the word was selected arbitrarily from a set of 
#       variants, none of which was clearly preferred.
# =	Roughly, this indicates a "second class" word, as described below.
# +	The word is a signature word.
# 2. Determine if the word is a palendrome
# 3. Determine if the word contains any spaces or hyphens
# 4. Write the word out in the following format:
# 0-2 Zero-filled length of word
# 3   Bit map (biased by ASCII '0'):
#     0 - word is palendrome
#     1 - word contains a space or hyphen
# 4-n The actual word
#
while (<>) {
    $flag=0;
    chomp;
    s/[\:\&\#\<\^\=\r]+//g;
    s/^\s+//;
    printf "%02d%1d%s\n",  length($_), $flag, $_;
}
