-- PostgreSQL.18 PostgreSQL12
SELECT
	r."Id"
FROM
	"Issue5975Row" r
WHERE
	r."Plain" = r."Date"

-- PostgreSQL.18 PostgreSQL12
SELECT
	r."Id"
FROM
	"Issue5975Row" r
WHERE
	r."Plain" < r."Date"

