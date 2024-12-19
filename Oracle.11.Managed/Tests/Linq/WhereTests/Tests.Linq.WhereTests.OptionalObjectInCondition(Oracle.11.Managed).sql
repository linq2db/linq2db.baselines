BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @p Varchar2(1) -- String
SET     @p = '1'

SELECT
	r."FirstName",
	r."PersonID",
	r."LastName",
	r."MiddleName",
	r."Gender"
FROM
	"Person" r
WHERE
	r."FirstName" = :p

BeforeExecute
-- Oracle.11.Managed Oracle11

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
-- Oracle.11.Managed Oracle11
DECLARE @p Varchar2(1) -- String
SET     @p = '1'

SELECT
	r."FirstName",
	r."PersonID",
	r."LastName",
	r."MiddleName",
	r."Gender"
FROM
	"Person" r
WHERE
	r."FirstName" = :p

