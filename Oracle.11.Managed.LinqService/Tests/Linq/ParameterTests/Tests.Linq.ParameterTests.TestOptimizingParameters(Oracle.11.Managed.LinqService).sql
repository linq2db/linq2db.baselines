BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @id Int32
SET     @id = 1

SELECT
	COUNT(*)
FROM
	"Person" t1
WHERE
	t1."PersonID" = :id OR t1."PersonID" <= :id

