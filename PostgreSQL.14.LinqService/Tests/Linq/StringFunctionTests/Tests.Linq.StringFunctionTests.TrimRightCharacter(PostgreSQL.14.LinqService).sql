﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	pp."PersonID",
	'  ' || pp."FirstName" || ' '
FROM
	"Person" pp
WHERE
	pp."PersonID" = 1 AND RTRIM(('  ' || pp."FirstName" || ' '), ' ') = '  John' AND
	RTRIM(('  ' || pp."FirstName" || ' '), ' ') IS NOT NULL

