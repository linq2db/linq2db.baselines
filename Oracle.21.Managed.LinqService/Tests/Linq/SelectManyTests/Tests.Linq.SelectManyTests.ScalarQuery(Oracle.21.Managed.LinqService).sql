﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	p2."PersonID",
	t1."FirstName"
FROM
	"Person" t1
		CROSS JOIN "Person" p2
WHERE
	t1."PersonID" = p2."PersonID"

