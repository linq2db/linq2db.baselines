BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @FirstName Varchar2(1) -- String
SET     @FirstName = '1'

SELECT
	r."FirstName",
	r."PersonID",
	r."LastName",
	r."MiddleName",
	r."Gender"
FROM
	"Person" r
WHERE
	r."FirstName" = :FirstName

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	r."FirstName",
	r."PersonID",
	r."LastName",
	r."MiddleName",
	r."Gender"
FROM
	"Person" r
WHERE
	1 = 0

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @FirstName Varchar2(1) -- String
SET     @FirstName = '1'

SELECT
	r."FirstName",
	r."PersonID",
	r."LastName",
	r."MiddleName",
	r."Gender"
FROM
	"Person" r
WHERE
	r."FirstName" = :FirstName

