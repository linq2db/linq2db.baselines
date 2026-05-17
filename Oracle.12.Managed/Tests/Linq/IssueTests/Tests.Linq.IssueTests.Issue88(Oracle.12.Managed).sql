-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1
WHERE
	t1."PersonID" = 1 AND t1."Gender" = 'M'

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1
WHERE
	t1."PersonID" = 1 AND 'M' = t1."Gender"

-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @gender Char -- StringFixedLength
SET     @gender = 'M'

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1
WHERE
	t1."PersonID" = 1 AND t1."Gender" = :gender

-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @gender Char -- StringFixedLength
SET     @gender = 'M'

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1
WHERE
	t1."PersonID" = 1 AND :gender = t1."Gender"

