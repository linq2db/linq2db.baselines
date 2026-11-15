-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @male Varchar2(1) -- String
SET     @male = 'M'
DECLARE @female Varchar2(1) -- String
SET     @female = 'F'
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
	CASE
		WHEN p."PersonID" > 2 THEN :male
		ELSE :female
	END = :gender

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

