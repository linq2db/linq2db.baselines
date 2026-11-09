-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @gender Char(1) -- AnsiStringFixedLength
SET     @gender = 'F'

SELECT
	p."PersonID",
	p."Gender"
FROM
	"Person" p
WHERE
	p."Gender" <> :gender

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

