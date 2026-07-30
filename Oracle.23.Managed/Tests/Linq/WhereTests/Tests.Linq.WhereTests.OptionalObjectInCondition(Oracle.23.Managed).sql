-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Id Varchar2(1) -- String
SET     @Id = '1'

SELECT
	r."FirstName",
	r."PersonID",
	r."LastName",
	r."MiddleName",
	r."Gender"
FROM
	"Person" r
WHERE
	r."FirstName" = :Id

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

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Id Varchar2(1) -- String
SET     @Id = '1'

SELECT
	r."FirstName",
	r."PersonID",
	r."LastName",
	r."MiddleName",
	r."Gender"
FROM
	"Person" r
WHERE
	r."FirstName" = :Id

