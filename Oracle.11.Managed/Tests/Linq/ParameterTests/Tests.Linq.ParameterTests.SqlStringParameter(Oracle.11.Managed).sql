-- Oracle.11.Managed Oracle11
DECLARE @p Varchar2(4) -- String
SET     @p = 'John'

SELECT
	t."PersonID",
	t."FirstName",
	t."LastName",
	t."MiddleName",
	t."Gender"
FROM
	"Person" t
WHERE
	t."FirstName" = :p AND ROWNUM <= 2

-- Oracle.11.Managed Oracle11
DECLARE @p Varchar2(6) -- String
SET     @p = 'Tester'

SELECT
	t."PersonID",
	t."FirstName",
	t."LastName",
	t."MiddleName",
	t."Gender"
FROM
	"Person" t
WHERE
	t."FirstName" = :p AND ROWNUM <= 2

