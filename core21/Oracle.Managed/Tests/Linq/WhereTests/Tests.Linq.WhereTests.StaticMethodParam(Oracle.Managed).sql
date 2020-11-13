BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @ID Int32
SET     @ID = 1

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	p."PersonID" = :ID

