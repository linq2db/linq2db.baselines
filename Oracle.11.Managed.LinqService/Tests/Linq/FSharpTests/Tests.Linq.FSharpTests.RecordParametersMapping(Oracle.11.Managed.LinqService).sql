BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	p."PersonID",
	p."FirstName",
	p."LastName",
	p."MiddleName"
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND ROWNUM <= 2

