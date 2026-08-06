-- Oracle.11.Managed Oracle11
DECLARE @p Int32
SET     @p = 1

SELECT
	p."PersonID",
	p."FirstName",
	p."MiddleName",
	p."LastName",
	p."Gender"
FROM
	"Person" p
WHERE
	p."PersonID" = :p AND ROWNUM <= 2

