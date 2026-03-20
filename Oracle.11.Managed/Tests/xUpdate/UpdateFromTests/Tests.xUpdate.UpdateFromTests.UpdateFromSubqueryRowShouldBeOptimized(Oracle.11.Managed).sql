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
			canChange_1."FirstName",
			canChange_1."LastName"
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

