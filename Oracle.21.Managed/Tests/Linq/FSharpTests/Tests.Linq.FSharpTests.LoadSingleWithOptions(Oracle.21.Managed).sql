-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 1

SELECT
	p."PersonID" as ID,
	p."FirstName",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	p."PersonID" = :p
FETCH NEXT 2 ROWS ONLY

