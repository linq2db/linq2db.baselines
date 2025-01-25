BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	p."PersonID" as ID,
	p."FirstName",
	p."LastName"
FROM
	"Person" p
WHERE
	p."FirstName" LIKE 'J%' ESCAPE '~' AND (p."PersonID" = 1 OR p."LastName" = 'fail')
FETCH NEXT 1 ROWS ONLY

