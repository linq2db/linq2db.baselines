-- Firebird.4 Firebird4
SELECT
	("r".A + "r".B) / "r".C,
	"r".A / ("r".B + "r".C),
	("r".A + "r".B) / "r".C,
	"r".A / ("r".B + "r".C),
	("r".A - "r".B) / "r".C,
	"r".A / ("r".B - "r".C),
	("r".A - "r".B) / "r".C,
	"r".A / ("r".B - "r".C),
	"r".A / ("r".B * "r".C),
	"r".A / ("r".B * "r".C),
	"r".A / "r".B / "r".C,
	"r".A / ("r".B / "r".C),
	"r".A / "r".B / "r".C,
	"r".A / ("r".B / "r".C),
	"r".A / Bin_Xor("r".B, "r".C),
	"r".A / Bin_Xor("r".B, "r".C),
	("r".A + "r".B) / "r".C,
	"r".A / ("r".B + "r".C),
	("r".A + -6) / "r".C,
	("r".A - "r".B) / "r".C,
	"r".A / ("r".B - "r".C),
	("r".A - -6) / "r".C,
	("r".A * "r".B) / "r".C,
	"r".A / ("r".B * "r".C),
	("r".A * -6) / "r".C,
	("r".A / "r".B) / "r".C,
	"r".A / ("r".B / "r".C),
	("r".A / -6) / "r".C,
	("r".A + "r".B) / "r".C,
	"r".A / ("r".B + "r".C),
	("r".A + -6) / "r".C,
	"r".A / -"r".B,
	("r".A - "r".B) / "r".C,
	("r".A + "r".B) / "r".C,
	"r".A / -"r".B / "r".C,
	Bin_And("r".A, -"r".B) / "r".C,
	Bin_Xor("r".A, -"r".B) / "r".C,
	"r".A * BIN_NOT("r".B) / "r".C,
	"r".A * -5 / "r".C,
	Bin_And("r".A, -5) / "r".C
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- Firebird.4 Firebird4
SELECT
	"r".A * -5 / "r".C,
	Bin_And("r".A, -5) / "r".C
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

