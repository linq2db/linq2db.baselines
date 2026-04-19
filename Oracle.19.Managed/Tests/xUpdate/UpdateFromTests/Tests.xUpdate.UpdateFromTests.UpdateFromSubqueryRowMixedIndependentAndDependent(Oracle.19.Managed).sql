-- Oracle.19.Managed Oracle.Managed Oracle12

UPDATE
	"UpdateSubquerySourceTable" x
SET
	"FirstName" = 'literalFirst',
	"LastName" = (
		SELECT
			t."LastName"
		FROM
			"UpdateSubquerySourceTable" t
		WHERE
			t."Id" = x."Id" + 1 AND ROWNUM <= 1
	)
WHERE
	x."Id" = 1

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."FirstName",
	t1."LastName"
FROM
	"UpdateSubquerySourceTable" t1
ORDER BY
	t1."Id"

