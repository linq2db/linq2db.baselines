﻿BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	pp."PersonID",
	'  ' || pp."FirstName" || ' '
FROM
	"Person" pp
WHERE
	pp."PersonID" = 1 AND LTRIM(('  ' || pp."FirstName" || ' '), (' J')) = 'ohn ' AND
	LTRIM(('  ' || pp."FirstName" || ' '), (' J')) IS NOT NULL

