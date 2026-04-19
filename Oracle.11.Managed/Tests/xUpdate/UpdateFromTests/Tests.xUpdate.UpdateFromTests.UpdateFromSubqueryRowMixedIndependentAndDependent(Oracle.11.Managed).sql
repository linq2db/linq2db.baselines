-- Oracle.11.Managed Oracle11

UPDATE
	"UpdateSubquerySourceTable"
SET
	"FirstName" = 'literalFirst',
	"LastName" = (
		SELECT
			t1."LastName"
		FROM
			(
				SELECT
					t."LastName",
					ROW_NUMBER() OVER (PARTITION BY t."Id" ORDER BY t."Id") as "rn",
					t."Id"
				FROM
					"UpdateSubquerySourceTable" t
			) t1
		WHERE
			t1."Id" = "UpdateSubquerySourceTable"."Id" + 1 AND
			t1."rn" = 1
	)
WHERE
	"UpdateSubquerySourceTable"."Id" = 1

-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."FirstName",
	t1."LastName"
FROM
	"UpdateSubquerySourceTable" t1
ORDER BY
	t1."Id"

