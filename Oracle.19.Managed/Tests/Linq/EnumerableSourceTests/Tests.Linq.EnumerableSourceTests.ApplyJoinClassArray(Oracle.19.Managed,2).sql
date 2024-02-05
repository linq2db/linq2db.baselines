BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
		CROSS APPLY (
			SELECT p."FirstName" AS "FirstName", 1 AS "PersonID", 'Janet' AS "LastName" FROM sys.dual
			UNION ALL
			SELECT NULL, 2, 'Doe' FROM sys.dual) n
WHERE
	p."LastName" = n."LastName"

