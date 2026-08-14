-- Oracle.11.Managed Oracle11
SELECT
	x."Id",
	x."Flag"
FROM
	"ConvertedFlagRow" x
UNION
SELECT
	x_1."Id",
	NULL
FROM
	"ConvertedFlagRow" x_1

