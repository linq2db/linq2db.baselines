-- Oracle.11.Managed Oracle11

DELETE FROM
	"Person" t1
WHERE
	t1."PersonID" > 4

-- Oracle.11.Managed Oracle11

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

-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."FirstName",
	t1."LastName"
FROM
	"UpdateSubquerySourceTable" t1
ORDER BY
	t1."Id"

-- Oracle.11.Managed Oracle11

DELETE FROM
	"Person" t1
WHERE
	t1."PersonID" > 4

