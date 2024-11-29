BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 1

SELECT
	p."PersonID" as ID,
	p."FirstName",
	p."MiddleName",
	p."LastName" as "Value_1",
	p."Gender"
FROM
	"Person" p
WHERE
	p."PersonID" = :p
FETCH NEXT 2 ROWS ONLY

