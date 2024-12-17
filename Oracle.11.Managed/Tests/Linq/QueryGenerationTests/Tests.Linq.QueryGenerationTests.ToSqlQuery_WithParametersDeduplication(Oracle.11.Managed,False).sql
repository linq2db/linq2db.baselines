BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @firstName Varchar2(255) -- String
SET     @firstName = 'John'

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	p."FirstName" = :firstName OR p."LastName" = :firstName

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @firstName Varchar2(4) -- String
SET     @firstName = 'John'

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	(p."FirstName" = :firstName OR p."LastName" = :firstName) AND
	ROWNUM <= 2

