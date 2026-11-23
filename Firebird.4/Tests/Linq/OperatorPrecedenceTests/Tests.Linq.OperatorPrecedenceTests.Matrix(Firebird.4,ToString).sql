-- Firebird.4 Firebird4
SELECT
	("r".A + "r".B),
	("r".A - "r".B),
	("r".A * "r".B),
	("r".A / "r".B),
	Mod("r".A, "r".B),
	Bin_And("r".A, "r".B),
	Bin_Or("r".A, "r".B),
	Bin_Xor("r".A, "r".B),
	(-"r".A),
	BIN_NOT("r".A)
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

