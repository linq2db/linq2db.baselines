-- Oracle.18.Managed Oracle.Managed Oracle12

DELETE FROM
	"Person" t1
WHERE
	t1."PersonID" > 4

-- Oracle.18.Managed Oracle.Managed Oracle12

UPDATE
	"UpdateSubquerySourceTable"
SET
	("FirstName", "LastName") = (
		SELECT
			canChange."FirstName",
			canChange."LastName"
		FROM
			"UpdateSubquerySourceTable" canChange
		WHERE
			canChange."Id" = "UpdateSubquerySourceTable"."Id" + 1
	)
WHERE
	"UpdateSubquerySourceTable"."Id" = 1

-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."FirstName",
	t1."LastName"
FROM
	"UpdateSubquerySourceTable" t1
ORDER BY
	t1."Id"

-- Oracle.18.Managed Oracle.Managed Oracle12

DELETE FROM
	"Person" t1
WHERE
	t1."PersonID" > 4

