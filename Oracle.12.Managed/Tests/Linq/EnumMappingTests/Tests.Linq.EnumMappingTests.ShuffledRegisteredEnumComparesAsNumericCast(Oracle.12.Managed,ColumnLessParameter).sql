-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @value Varchar2(1) -- String
SET     @value = 'M'

SELECT
	p."PersonID",
	p."Gender"
FROM
	"Person" p
WHERE
	CASE
		WHEN p."PersonID" > 2 THEN 'M'
		ELSE 'F'
	END = :value

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

