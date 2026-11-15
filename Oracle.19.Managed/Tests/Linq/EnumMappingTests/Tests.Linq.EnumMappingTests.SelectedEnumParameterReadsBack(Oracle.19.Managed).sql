-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @gender Int32
SET     @gender = 1

SELECT
	p."PersonID",
	:gender
FROM
	"Person" p

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

