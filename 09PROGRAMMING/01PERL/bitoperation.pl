#!/usr/bin/perl

my $binary1=0x63;
my $binary2=0x53;

print "## let us think we have two binary strings\n\n";

printf("\ta : %08b \n",$binary1);print "\n";
printf("\tb : %08b \n",$binary2);print "\n";

print "## Bitwise Operation\n\n";

print "### AND/& Operator\n\n";
printf("   %08b\n & %08b\n   --------\n   %08b", $binary1,$binary2,$binary1 & $binary2);
print "\n";

print "### or/| Operator\n\n";
printf("   %08b\n | %08b\n   --------\n   %08b", $binary1,$binary2,$binary1 | $binary2);
print "\n";

print "### XOR/^ Operator\n\n";
printf("   %08b\n ^ %08b\n   --------\n   %08b", $binary1,$binary2,$binary1 ^ $binary2);
print "\n";

print "### Not/~ Operator\n\n";
printf(" ~ %08b\n   %08b\n", $binary1,~$binary2);
print "\n";

print "### bit shift\n\n";

print "Arithmetic Left shift by two\n";
printf("   %08b\n   %08b \n\n",$binary1, $binary1 << 2 & 2**8-1);

print "Arithmetic Right shift by two\n";
printf("   %08b\n   %08b",$binary1, $binary1 >> 2 & 2**8-1)
