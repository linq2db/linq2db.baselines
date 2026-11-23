-- Firebird.3 Firebird3
SELECT
	Mod("r".A + "r".B, "r".C),
	Mod("r".A, "r".B + "r".C),
	Mod("r".A + "r".B, "r".C),
	Mod("r".A, "r".B + "r".C),
	Mod("r".A - "r".B, "r".C),
	Mod("r".A, "r".B - "r".C),
	Mod("r".A - "r".B, "r".C),
	Mod("r".A, "r".B - "r".C),
	Mod("r".A / "r".B, "r".C),
	Mod("r".A / "r".B, "r".C),
	Mod(Mod("r".A, "r".B), "r".C),
	Mod(Mod("r".A, "r".B), "r".C),
	Mod(Bin_And("r".A, "r".B), "r".C),
	Mod(Bin_And("r".A, "r".B), "r".C),
	Mod(Bin_Or("r".A, "r".B), "r".C),
	Mod("r".A, Bin_Or("r".B, "r".C)),
	Mod(Bin_Or("r".A, "r".B), "r".C),
	Mod("r".A, Bin_Or("r".B, "r".C)),
	Mod(Bin_Xor("r".A, "r".B), "r".C),
	Mod("r".A, Bin_Xor("r".B, "r".C)),
	Mod(Bin_Xor("r".A, "r".B), "r".C),
	Mod("r".A, Bin_Xor("r".B, "r".C)),
	Mod("r".A + "r".B, "r".C),
	Mod("r".A, "r".B + "r".C),
	Mod("r".A + -6, "r".C),
	Mod("r".A - "r".B, "r".C),
	Mod("r".A, "r".B - "r".C),
	Mod("r".A - -6, "r".C),
	Mod("r".A * "r".B, "r".C),
	Mod("r".A, "r".B * "r".C),
	Mod("r".A * -6, "r".C),
	Mod("r".A / "r".B, "r".C),
	Mod("r".A, "r".B / "r".C),
	Mod("r".A / -6, "r".C),
	Mod("r".A + "r".B, "r".C),
	Mod("r".A, "r".B + "r".C),
	Mod("r".A + -6, "r".C),
	Mod("r".A, -"r".B),
	Mod("r".A - "r".B, "r".C),
	Mod("r".A + "r".B, "r".C),
	Mod("r".A / -"r".B, "r".C),
	Mod(Mod("r".A, -"r".B), "r".C),
	Mod(Bin_Or("r".A, -"r".B), "r".C),
	Mod(Bin_Xor("r".A, -"r".B), "r".C),
	Mod("r".A, BIN_NOT("r".B)),
	Mod("r".A + BIN_NOT("r".B), "r".C),
	Mod("r".A - BIN_NOT("r".B), "r".C),
	Mod("r".A * BIN_NOT("r".B), "r".C),
	Mod(Mod("r".A, BIN_NOT("r".B)), "r".C),
	Mod(Bin_And("r".A, BIN_NOT("r".B)), "r".C),
	Mod(Bin_Or("r".A, BIN_NOT("r".B)), "r".C),
	Mod(Bin_Xor("r".A, BIN_NOT("r".B)), "r".C),
	Mod("r".A, -5),
	Mod(-5, "r".C),
	Mod("r".A + -5, "r".C),
	Mod("r".A - -5, "r".C),
	Mod("r".A * -5, "r".C),
	Mod(Mod("r".A, -5), "r".C),
	Mod(Bin_And("r".A, -5), "r".C),
	Mod(Bin_Or("r".A, -5), "r".C),
	Mod(Bin_Xor("r".A, -5), "r".C)
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- Firebird.3 Firebird3
SELECT
	Mod("r".A, -5),
	Mod(-5, "r".C),
	Mod("r".A + -5, "r".C),
	Mod("r".A - -5, "r".C),
	Mod("r".A * -5, "r".C),
	Mod(Mod("r".A, -5), "r".C),
	Mod(Bin_And("r".A, -5), "r".C),
	Mod(Bin_Or("r".A, -5), "r".C),
	Mod(Bin_Xor("r".A, -5), "r".C)
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

