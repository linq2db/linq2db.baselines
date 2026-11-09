-- Oracle.11.Managed Oracle11
DECLARE @gender Varchar2(1) -- String
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
	:gender = CASE
		WHEN p."PersonID" > 2 THEN 'M'
		ELSE 'F'
	END

-- Oracle.11.Managed Oracle11
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

