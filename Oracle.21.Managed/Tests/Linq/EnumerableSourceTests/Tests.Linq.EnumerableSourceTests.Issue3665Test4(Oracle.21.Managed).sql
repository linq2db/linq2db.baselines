-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	x."PersonID" + y."item"
FROM
	"Person" x
		CROSS JOIN (
			SELECT 1 AS "item" FROM sys.dual
			UNION ALL
			SELECT 3 FROM sys.dual) y

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

