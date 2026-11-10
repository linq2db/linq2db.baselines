-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	r."Id"
FROM
	"Issue5975Row" r
WHERE
	r."Plain" = r."Date"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	r."Id"
FROM
	"Issue5975Row" r
WHERE
	r."Plain" < r."Date"

