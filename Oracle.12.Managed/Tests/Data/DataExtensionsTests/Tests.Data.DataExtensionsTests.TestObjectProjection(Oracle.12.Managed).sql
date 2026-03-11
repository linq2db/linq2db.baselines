-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	p."PersonID" as ID,
	p."FirstName",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	p."PersonID" = 1
FETCH NEXT :take ROWS ONLY

