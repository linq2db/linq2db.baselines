-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	x."Id",
	x."Value"
FROM
	"BaseTable" x
WHERE
	x."Id" = 1
LIMIT 1

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	x."Id",
	x."Value"
FROM
	"BaseTable" x
WHERE
	x."Id" = 1 AND x."Value" = 100
LIMIT 1

