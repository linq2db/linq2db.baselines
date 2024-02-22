BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	p."PersonID" as ID,
	p."FirstName",
	p."LastName" as "SecondName"
FROM
	"Person" p
WHERE
	(p."PersonID" = 1 OR p."LastName" = 'fail') AND p."FirstName" LIKE 'J%' ESCAPE '~'
FETCH NEXT 1 ROWS ONLY

