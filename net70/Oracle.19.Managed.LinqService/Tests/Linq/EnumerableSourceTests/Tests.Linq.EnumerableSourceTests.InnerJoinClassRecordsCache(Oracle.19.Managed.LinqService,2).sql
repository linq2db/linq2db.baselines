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
			SELECT 3 AS "PersonID" FROM sys.dual
			UNION ALL
			SELECT 4 FROM sys.dual) n ON p."PersonID" = n."PersonID"

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
			SELECT 5 AS "PersonID" FROM sys.dual
			UNION ALL
			SELECT 6 FROM sys.dual) n ON p."PersonID" = n."PersonID"

