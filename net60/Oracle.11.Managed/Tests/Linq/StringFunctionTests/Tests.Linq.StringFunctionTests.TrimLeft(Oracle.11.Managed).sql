﻿BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	p."PersonID",
	p."FirstName"
FROM
	"Person" p
WHERE
	LTRIM(('  ' || p."FirstName" || ' '), ' ') = 'John ' AND
	p."PersonID" = 1

