BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @ID Int32
SET     @ID = 1

SELECT
	p."PersonID" as ID,
	p."FirstName",
	p."MiddleName",
	p."LastName" as "Value_1",
	p."Gender"
FROM
	"Person" p
WHERE
	p."PersonID" = :ID
FETCH NEXT 2 ROWS ONLY

