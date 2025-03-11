BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @personId Int32
SET     @personId = 1

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."PersonID" = :personId AND p."PersonID" = :personId AND
	p."PersonID" = :personId

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @personId Int32
SET     @personId = 1
DECLARE @personId_1 Int32
SET     @personId_1 = 2

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."PersonID" = :personId AND p."PersonID" = :personId AND
	p."PersonID" = :personId_1

