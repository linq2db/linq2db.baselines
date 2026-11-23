-- Firebird.4 Firebird4
SELECT
	-("r".A + "r".B),
	-("r".A + "r".B),
	-("r".A - "r".B),
	-("r".A - "r".B),
	-Bin_And("r".A, "r".B),
	-Bin_And("r".A, "r".B),
	-Bin_Or("r".A, "r".B),
	-Bin_Or("r".A, "r".B),
	-Bin_Xor("r".A, "r".B),
	-Bin_Xor("r".A, "r".B),
	"r".B,
	-BIN_NOT("r".B),
	-(-5),
	-(-5 * "r".B)
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- Firebird.4 Firebird4
SELECT
	-(-5)
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

