﻿BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	p."PersonID",
	p."LastName"
FROM
	"Person" p
WHERE
	p."PersonID" IN (1, 3)
ORDER BY
	p."LastName"

