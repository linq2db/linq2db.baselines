-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @gender Char(1) -- AnsiStringFixedLength
SET     @gender = 'F'

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	CAST(p."Gender" AS VarChar(255)) = :gender

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

