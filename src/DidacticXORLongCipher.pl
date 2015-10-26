my $str = "8776459cf37d459fbb7b5ecfbb7f5fcfb23e478aaa3e4389f378439aa13e4e96a77b5fc1f358439df36a4486a03e4381b63e5580a66c0c8ebd6d5b8aa13e459cf34e4d9fa67f02cf90714288a17f589abf7f5886bc705fcfbc700c96bc6b5ecfb7775f8cbc68499daa3f";

$str =~ s/(\w{8})/$1 /g;

for my $x (1..2) {
for my $y (1..2) {
for my $z (1..255) {
for my $t (1..255) {
	my $decode = "";
	for (split(/\s/, $str)) {
		my ($h1, $h2, $h3, $h4) = $_ =~ m/(\w)(\w)(\w)(\w)/;
		$decode .= chr(hex($h1) ^ $x);
		$decode .= chr(hex($h2) ^ $y);
		$decode .= chr(hex($h3) ^ $z);
		$decode .= chr(hex($h4) ^ $t);
	}
	print $decode, "\n";
}
}
}
}
		
	
	

