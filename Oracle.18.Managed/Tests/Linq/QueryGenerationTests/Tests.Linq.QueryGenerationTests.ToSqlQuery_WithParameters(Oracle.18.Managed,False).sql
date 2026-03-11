-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 1

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	p."PersonID" = :id

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 1

SELECT
	p."FirstName",
	p."PersonID" as ID,
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	p."PersonID" = :id
FETCH NEXT 2 ROWS ONLY

