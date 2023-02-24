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
		INNER JOIN (
			SELECT 2 AS "PersonID" FROM sys.dual
			UNION ALL
			SELECT 3 FROM sys.dual) n ON p."PersonID" = n."PersonID"

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
		INNER JOIN (
			SELECT 4 AS "PersonID" FROM sys.dual
			UNION ALL
			SELECT 5 FROM sys.dual) n ON p."PersonID" = n."PersonID"

