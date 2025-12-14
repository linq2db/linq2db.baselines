-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."PersonID" as ID,
	t1."Gender",
	t1."FirstName",
	t1."LastName",
	t1."MiddleName"
FROM
	"Person" t1
WHERE
	t1."PersonID" = 1
FETCH NEXT 1 ROWS ONLY

