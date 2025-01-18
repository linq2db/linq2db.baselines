BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue"
FROM
	"WhereWithBool" t,
	"WhereWithBool" x
WHERE
	x."BoolValue" AND x."Id" = 1

