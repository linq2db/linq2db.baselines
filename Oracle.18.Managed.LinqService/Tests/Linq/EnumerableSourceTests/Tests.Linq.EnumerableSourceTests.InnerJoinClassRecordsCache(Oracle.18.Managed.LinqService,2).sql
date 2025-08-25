BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
		INNER JOIN (
			SELECT 3 AS ID FROM sys.dual
			UNION ALL
			SELECT 4 FROM sys.dual) n ON p."PersonID" = n.ID

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
		INNER JOIN (
			SELECT 5 AS ID FROM sys.dual
			UNION ALL
			SELECT 6 FROM sys.dual) n ON p."PersonID" = n.ID

