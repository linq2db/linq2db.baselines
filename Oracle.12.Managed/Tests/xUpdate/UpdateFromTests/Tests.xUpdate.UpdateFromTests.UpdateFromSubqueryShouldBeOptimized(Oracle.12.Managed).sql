-- Oracle.12.Managed Oracle.Managed Oracle12

DELETE FROM
	"Person" t1
WHERE
	t1."PersonID" > 4

-- Oracle.12.Managed Oracle.Managed Oracle12

UPDATE
	"UpdateSubquerySourceTable"
SET
	("FirstName", "LastName") = (
		SELECT
			CASE
				WHEN canChange_1."Id" IS NOT NULL THEN canChange_1."FirstName"
				ELSE x_1."FirstName"
			END,
			CASE
				WHEN canChange_1."Id" IS NOT NULL THEN canChange_1."LastName"
				ELSE x_1."LastName"
			END
		FROM
			"UpdateSubquerySourceTable" x_1
				LEFT JOIN "UpdateSubquerySourceTable" canChange_1 ON canChange_1."Id" = x_1."Id" + 1
		WHERE
			x_1."Id" = 1 AND "UpdateSubquerySourceTable"."Id" = x_1."Id"
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"UpdateSubquerySourceTable" x
				LEFT JOIN "UpdateSubquerySourceTable" canChange ON canChange."Id" = x."Id" + 1
		WHERE
			x."Id" = 1 AND "UpdateSubquerySourceTable"."Id" = x."Id"
	)

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."FirstName",
	t1."LastName"
FROM
	"UpdateSubquerySourceTable" t1
ORDER BY
	t1."Id"

-- Oracle.12.Managed Oracle.Managed Oracle12

DELETE FROM
	"Person" t1
WHERE
	t1."PersonID" > 4

