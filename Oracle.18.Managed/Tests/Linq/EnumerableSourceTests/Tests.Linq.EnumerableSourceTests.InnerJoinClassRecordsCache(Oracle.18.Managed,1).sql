-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
		INNER JOIN (
			SELECT 2 AS ID FROM sys.dual
			UNION ALL
			SELECT 3 FROM sys.dual) n ON p."PersonID" = n.ID

-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
		INNER JOIN (
			SELECT 4 AS ID FROM sys.dual
			UNION ALL
			SELECT 5 FROM sys.dual) n ON p."PersonID" = n.ID

