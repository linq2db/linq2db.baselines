-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Person" t1
WHERE
	1 = 0

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 1

SELECT
	COUNT(*)
FROM
	"Person" t1
WHERE
	t1."PersonID" = :id

