﻿BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	p."PersonID",
	p."FirstName"
FROM
	"Person" p
WHERE
	'123' || p."FirstName" || '456' = '123John456' AND
	p."PersonID" = 1

