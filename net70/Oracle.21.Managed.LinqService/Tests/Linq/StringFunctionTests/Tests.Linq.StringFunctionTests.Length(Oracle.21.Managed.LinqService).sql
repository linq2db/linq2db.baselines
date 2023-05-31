BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Length Int32
SET     @Length = 4

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	Length(p."FirstName") = :Length AND p."PersonID" = 1

