BeforeExecute
-- Oracle.11.Managed Oracle11
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
-- Oracle.11.Managed Oracle11
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

