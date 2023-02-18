BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @z Int32
SET     @z = 1

SELECT
	r."FirstName",
	r."PersonID",
	r."LastName",
	r."MiddleName",
	r."Gender"
FROM
	"Person" r
WHERE
	r."PersonID" = :z

