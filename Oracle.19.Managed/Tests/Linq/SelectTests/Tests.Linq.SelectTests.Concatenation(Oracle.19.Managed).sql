﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	p."PersonID",
	p."FirstName"
FROM
	"Person" p
WHERE
	'123' || p."FirstName" || '456' = '123John456' AND
	p."PersonID" = 1

