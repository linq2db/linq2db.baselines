﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	pp."PersonID",
	'  ' || pp."FirstName" || ' '
FROM
	"Person" pp
WHERE
	pp."PersonID" = 1 AND RTRIM(('  ' || pp."FirstName" || ' '), ' ') = '  John' AND
	RTRIM(('  ' || pp."FirstName" || ' '), ' ') IS NOT NULL

