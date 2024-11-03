BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	x."PersonID" + y."item"
FROM
	"Person" x
		CROSS JOIN (
			SELECT 0 AS "item" FROM sys.dual
			UNION ALL
			SELECT 1 FROM sys.dual
			UNION ALL
			SELECT 2 FROM sys.dual
			UNION ALL
			SELECT 3 FROM sys.dual) y

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

