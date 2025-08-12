BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t."Id",
	t."BoolValue"
FROM
	"WhereWithBool" t
WHERE
	((
		SELECT
			x."BoolValue"
		FROM
			"WhereWithBool" x
		WHERE
			x."Id" = 1
	))

