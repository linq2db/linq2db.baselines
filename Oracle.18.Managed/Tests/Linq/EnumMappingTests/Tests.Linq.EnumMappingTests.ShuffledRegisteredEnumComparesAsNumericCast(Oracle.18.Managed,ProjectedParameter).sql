-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @value Char(1) -- AnsiStringFixedLength
SET     @value = 'M'

SELECT
	p."PersonID",
	p."Gender"
FROM
	"Person" p
WHERE
	p."Gender" = :value

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

