-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	r."Id"
FROM
	"Issue5975Row" r
WHERE
	r."Plain" = r."Date"

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	r."Id"
FROM
	"Issue5975Row" r
WHERE
	r."Plain" < r."Date"

