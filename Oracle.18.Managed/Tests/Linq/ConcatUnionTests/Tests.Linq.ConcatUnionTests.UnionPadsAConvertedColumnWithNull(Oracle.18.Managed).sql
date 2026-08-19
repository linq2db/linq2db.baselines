-- Oracle.18.Managed Oracle.Managed Oracle12
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

