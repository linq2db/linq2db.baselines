-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

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

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t1."Id",
	t1."FirstName",
	t1."LastName"
FROM
	"UpdateSubquerySourceTable" t1
ORDER BY
	t1."Id"

