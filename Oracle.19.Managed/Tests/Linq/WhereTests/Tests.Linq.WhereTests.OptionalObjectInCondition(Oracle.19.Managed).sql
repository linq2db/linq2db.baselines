-- Oracle.19.Managed Oracle.Managed Oracle12
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

-- Oracle.19.Managed Oracle.Managed Oracle12

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

-- Oracle.19.Managed Oracle.Managed Oracle12
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

