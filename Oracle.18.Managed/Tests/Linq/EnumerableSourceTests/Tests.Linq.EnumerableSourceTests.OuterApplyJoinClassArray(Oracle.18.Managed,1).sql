BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
		LEFT JOIN (
			SELECT 'Janet' AS "LastName" FROM sys.dual
			UNION ALL
			SELECT 'Doe' FROM sys.dual) n ON p."LastName" = n."LastName"

