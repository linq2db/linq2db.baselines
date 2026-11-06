-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	CASE
		WHEN r."Id" = 1 THEN r."Plain"
		ELSE r."Date"
	END
FROM
	"Issue5975Row" r
ORDER BY
	r."Id"

