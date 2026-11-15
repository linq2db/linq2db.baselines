-- Oracle.11.Managed Oracle11
DECLARE @gender Int32
SET     @gender = 1

SELECT
	p."PersonID",
	:gender
FROM
	"Person" p

-- Oracle.11.Managed Oracle11
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

