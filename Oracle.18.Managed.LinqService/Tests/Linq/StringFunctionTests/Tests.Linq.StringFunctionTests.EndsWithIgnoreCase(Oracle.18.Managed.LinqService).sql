﻿BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	p."FirstName" LIKE '%JOHN' ESCAPE '~' AND p."PersonID" = 1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	p."FirstName" NOT LIKE '%JOHN' ESCAPE '~' AND p."PersonID" = 1

