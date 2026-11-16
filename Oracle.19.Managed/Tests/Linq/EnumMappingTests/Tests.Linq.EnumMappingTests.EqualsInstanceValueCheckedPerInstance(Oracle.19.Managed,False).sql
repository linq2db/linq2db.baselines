-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Value Char(1) -- AnsiStringFixedLength
SET     @Value = 'F'

SELECT
	p."PersonID"
FROM
	"Person" p
WHERE
	p."Gender" = :Value

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

