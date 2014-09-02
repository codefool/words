#!/usr/bin/perl
#
# This script takes as input a word list file and performes the following:
# 1. Strip off identifying attribute characters
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
	print;
}
