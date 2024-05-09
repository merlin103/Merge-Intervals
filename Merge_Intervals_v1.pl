#!/bin/perl -w

use strict;
use feature 'say';
use Data::Dumper;

sub Merge_Intervals{
	my @nums = @_;
	my @result;

	foreach (@nums){
		my @num = @$_;
		say @num;
		if ((not @result) or ($result[-1][1] < $num[0])){
			push(@result, \@num);
		}
		else {
			my $temp = pop @result;
			push (@result, [@$temp[0], $num[1]]);
		}
	}

	say Dumper @result;
}

Merge_Intervals([1,3],[2,6],[8,10],[15,18]); # [1,6], [8,10], [15,18] 
Merge_Intervals([1,4], [4,5]); # [1,5]
