-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 1

SELECT
	r."FirstName",
	r."PersonID",
	r."LastName",
	r."MiddleName",
	r."Gender"
FROM
	"Person" r
WHERE
	r."PersonID" = :p

