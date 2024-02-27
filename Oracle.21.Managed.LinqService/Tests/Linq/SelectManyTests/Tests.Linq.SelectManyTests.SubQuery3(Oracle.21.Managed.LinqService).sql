﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 1

SELECT
	t1."PersonID",
	p2."FirstName"
FROM
	"Person" t1,
	"Person" p2
WHERE
	t1."PersonID" = p2."PersonID" AND p2."PersonID" = :id

