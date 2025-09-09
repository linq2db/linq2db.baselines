BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	e."Id",
	e."RecSrc",
	e."Value"
FROM
	"Entry" e
WHERE
	(e."RecSrc", e."Value") = ('default', 2007)

