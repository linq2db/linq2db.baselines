BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Length_1 Int32
SET     @Length_1 = 4

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	Length(p."FirstName") = :Length_1 AND p."PersonID" = 1

