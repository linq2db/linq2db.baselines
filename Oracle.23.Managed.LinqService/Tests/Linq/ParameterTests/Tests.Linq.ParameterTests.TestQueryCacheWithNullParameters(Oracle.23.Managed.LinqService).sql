BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	"Person" t1
WHERE
	t1."PersonID" IS NULL

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 1

SELECT
	Count(*)
FROM
	"Person" t1
WHERE
	t1."PersonID" = :id

