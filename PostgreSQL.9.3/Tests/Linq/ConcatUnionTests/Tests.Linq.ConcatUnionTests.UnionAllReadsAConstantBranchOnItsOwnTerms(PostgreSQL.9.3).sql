-- PostgreSQL.9.3 PostgreSQL
SELECT
	NULL::Boolean,
	x."Id",
	x."Flag"
FROM
	"ConvertedFlagRow" x
UNION ALL
SELECT
	True::Boolean,
	x_1."Id",
	NULL::character
FROM
	"ConvertedFlagRow" x_1

