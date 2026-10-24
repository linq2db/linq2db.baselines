-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @abcdefghijabcdefghijabcdefghij Int32
SET     @abcdefghijabcdefghijabcdefghij = 1

SELECT
	r."FirstName",
	r."PersonID",
	r."LastName",
	r."MiddleName",
	r."Gender"
FROM
	"Person" r
WHERE
	r."PersonID" = :abcdefghijabcdefghijabcdefghij

