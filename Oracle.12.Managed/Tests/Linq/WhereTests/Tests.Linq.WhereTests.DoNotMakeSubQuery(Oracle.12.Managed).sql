﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	p2."PersonID",
	p2."FirstName" || ''
FROM
	"Person" p2
WHERE
	p2."PersonID" = 1

