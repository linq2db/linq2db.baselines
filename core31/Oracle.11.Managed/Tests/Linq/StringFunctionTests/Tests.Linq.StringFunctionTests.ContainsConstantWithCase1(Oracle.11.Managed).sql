﻿BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	p."FirstName" NOT LIKE '%Joh%' ESCAPE '~' AND p."PersonID" = 1

