BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p,
	(
		SELECT 1 AS "value" FROM "Person"
	) s
WHERE
	s."value" = 1

