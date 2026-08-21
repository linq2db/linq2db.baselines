-- Firebird.3 Firebird3
SELECT
	NULL,
	"x"."Id",
	"x"."Flag"
FROM
	"ConvertedFlagRow" "x"
UNION ALL
SELECT
	TRUE,
	"x_1"."Id",
	NULL
FROM
	"ConvertedFlagRow" "x_1"

