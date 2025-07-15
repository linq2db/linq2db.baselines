BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1."FirstName",
	t1."PersonID" as ID,
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1
ORDER BY
	t1."LastName"
OFFSET 3 ROWS FETCH NEXT 1 ROWS ONLY 

