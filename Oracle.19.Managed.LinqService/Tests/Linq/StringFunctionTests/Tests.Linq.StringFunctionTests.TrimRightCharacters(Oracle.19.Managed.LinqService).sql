﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	pp."PersonID",
	'  ' || pp."FirstName" || ' '
FROM
	"Person" pp
WHERE
	RTRIM(('  ' || pp."FirstName" || ' '), ' n') = '  Joh' AND
	pp."PersonID" = 1

