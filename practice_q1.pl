#!/usr/bin/perl -w


while (<STDIN>) {
    #print $_;
    @words = split /\|/, $_;
    $student_number = $words[1];
    next if $already_counted{$student_number};
    $already_counted{$student_number} = 1;
    $full = $words[2];
    $full =~ /.*,\s+(\S+)/ or next;
    $first = $1;
    print ("$first\n");

}
