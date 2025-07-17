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
		INNER JOIN (
			SELECT 'Janet' AS "Name" FROM sys.dual
			UNION ALL
			SELECT 'Doe' FROM sys.dual) n ON p."LastName" = n."Name"

