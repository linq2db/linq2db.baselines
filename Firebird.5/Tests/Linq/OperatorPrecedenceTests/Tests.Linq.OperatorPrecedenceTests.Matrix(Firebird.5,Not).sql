-- Firebird.5 Firebird4
SELECT
	BIN_NOT("r".A + "r".B),
	BIN_NOT("r".A + "r".B),
	BIN_NOT("r".A - "r".B),
	BIN_NOT("r".A - "r".B),
	BIN_NOT("r".A * "r".B),
	BIN_NOT("r".A * "r".B),
	BIN_NOT("r".A / "r".B),
	BIN_NOT("r".A / "r".B),
	BIN_NOT(Bin_And("r".A, "r".B)),
	BIN_NOT(Bin_And("r".A, "r".B)),
	BIN_NOT(Bin_Or("r".A, "r".B)),
	BIN_NOT(Bin_Or("r".A, "r".B)),
	BIN_NOT(-"r".B),
	BIN_NOT(BIN_NOT("r".B)),
	BIN_NOT(-5),
	BIN_NOT(-5 * "r".B)
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- Firebird.5 Firebird4
SELECT
	BIN_NOT(-5)
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

