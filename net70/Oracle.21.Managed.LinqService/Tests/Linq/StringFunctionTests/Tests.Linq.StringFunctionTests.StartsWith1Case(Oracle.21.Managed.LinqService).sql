﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	p."FirstName" LIKE 'Jo%' ESCAPE '~' AND p."PersonID" = 1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	p."FirstName" LIKE 'jo%' ESCAPE '~' AND p."PersonID" = 1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	p."FirstName" NOT LIKE 'Jo%' ESCAPE '~' AND p."PersonID" = 1

