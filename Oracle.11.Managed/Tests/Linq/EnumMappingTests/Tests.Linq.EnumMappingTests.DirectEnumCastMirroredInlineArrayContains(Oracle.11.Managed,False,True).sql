-- Oracle.11.Managed Oracle11
DECLARE @api Varchar2(1) -- String
SET     @api = 'M'

SELECT
	p."PersonID"
FROM
	"Person" p
WHERE
	:api IN (p."Gender", 'M')

-- Oracle.11.Managed Oracle11
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

