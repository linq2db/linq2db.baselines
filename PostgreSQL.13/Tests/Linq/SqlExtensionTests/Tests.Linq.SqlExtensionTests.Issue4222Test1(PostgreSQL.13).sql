-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	e."Id",
	e."RecSrc",
	e."Value"
FROM
	"Entry" e
WHERE
	(e."RecSrc", e."Value") = ('default', 2007)

