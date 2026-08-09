-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
UPDATE
	"UpdateSubquerySourceTable"
SET
	("FirstName", "LastName") = ('literalFirst', (
		SELECT
			t."LastName"
		FROM
			"UpdateSubquerySourceTable" t
		WHERE
			t."Id" = "UpdateSubquerySourceTable"."Id" + 1
		LIMIT 1
	))
WHERE
	"UpdateSubquerySourceTable"."Id" = 1

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t1."Id",
	t1."FirstName",
	t1."LastName"
FROM
	"UpdateSubquerySourceTable" t1
ORDER BY
	t1."Id"

