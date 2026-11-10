-- PostgreSQL.9.2 PostgreSQL
SELECT
	r."Id"
FROM
	"Issue5975Row" r
WHERE
	r."Plain" = r."Date"

-- PostgreSQL.9.2 PostgreSQL
SELECT
	r."Id"
FROM
	"Issue5975Row" r
WHERE
	r."Plain" < r."Date"

