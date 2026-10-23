-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	NULL,
	x."Id",
	x."Flag"
FROM
	"ConvertedFlagRow" x
UNION ALL
SELECT
	CAST(1 AS NUMBER(1)),
	x_1."Id",
	NULL
FROM
	"ConvertedFlagRow" x_1

