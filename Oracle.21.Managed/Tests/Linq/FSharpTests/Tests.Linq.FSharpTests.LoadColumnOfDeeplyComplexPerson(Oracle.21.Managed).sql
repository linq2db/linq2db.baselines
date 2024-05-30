BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @ID Int32
SET     @ID = 1

SELECT
	p."LastName" as "Value_1"
FROM
	"Person" p
WHERE
	p."PersonID" = :ID
FETCH NEXT 2 ROWS ONLY

