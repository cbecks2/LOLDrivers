
rule PUA_VULN_Driver_ZemanaLtd_ZAM_4SLS {
	meta:
		description = "Detects vulnerable driver mentioned in LOLDrivers project using VersionInfo values from the PE header - 21e13f2cb269defeae5e1d09887d47bb.bin, 06897b431c07886454e0681723dd53e6.bin"
		author = "Florian Roth"
		reference = "https://github.com/magicsword-io/LOLDrivers"
		hash = "543991ca8d1c65113dff039b85ae3f9a87f503daec30f46929fd454bc57e5a91"
		hash = "ab2632a4d93a7f3b7598c06a9fdc773a1b1b69a7dd926bdb7cf578992628e9dd"
		date = "2023-05-31"
		score = 50
	strings:
		$ = { 00460069006c0065004400650073006300720069007000740069006f006e[1-8]005a0041004d } /* FileDescription ZAM */
		$ = { 0043006f006d00700061006e0079004e0061006d0065[1-8]005a0065006d0061006e00610020004c00740064002e } /* CompanyName Zemana Ltd. */
		$ = { 00500072006f006400750063007400560065007200730069006f006e[1-8]0032002e00320031002e00360033 } /* ProductVersion 2.21.63 */
		$ = { 00500072006f0064007500630074004e0061006d0065[1-8]005a0041004d } /* ProductName ZAM */
		$ = { 004c006500670061006c0043006f0070007900720069006700680074[1-8]005a0065006d0061006e00610020004c00740064002e00200041006c006c0020007200690067006800740073002000720065007300650072007600650064002e } /* LegalCopyright Zemana Ltd. All rights reserved. */
	condition:
		all of them
}