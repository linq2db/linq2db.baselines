-- Firebird.2.5 Firebird
SELECT
	NULL,
	"x"."Id",
	"x"."Flag"
FROM
	"ConvertedFlagRow" "x"
UNION ALL
SELECT
	CAST('1' AS CHAR(1)),
	"x_1"."Id",
	NULL
FROM
	"ConvertedFlagRow" "x_1"

