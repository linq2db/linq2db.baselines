-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 1

SELECT
	p."LastName" as "Value_1"
FROM
	"Person" p
WHERE
	p."PersonID" = :p
FETCH NEXT 2 ROWS ONLY

