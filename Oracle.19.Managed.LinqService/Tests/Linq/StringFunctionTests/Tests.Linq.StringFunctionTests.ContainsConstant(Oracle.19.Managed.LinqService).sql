﻿BeforeExecute
--  Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."FirstName" LIKE '%jOh%' ESCAPE '~' AND p."PersonID" = 1

BeforeExecute
--  Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."FirstName" NOT LIKE '%jOh%' ESCAPE '~' AND p."PersonID" = 1

