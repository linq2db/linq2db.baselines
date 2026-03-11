-- Oracle.11.Managed Oracle11

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
		INNER JOIN (
			SELECT 'Janet' AS "item" FROM sys.dual
			UNION ALL
			SELECT 'Doe' FROM sys.dual
			UNION ALL
			SELECT 'John' FROM sys.dual
			UNION ALL
			SELECT 'Doe' FROM sys.dual) n ON p."LastName" = n."item"

