-- PostgreSQL.11 PostgreSQL
SELECT
	x."Id",
	x."Flag"
FROM
	"ConvertedFlagRow" x
UNION
SELECT
	x_1."Id",
	NULL::character
FROM
	"ConvertedFlagRow" x_1

