﻿BeforeExecute
--  Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND '123#456' LIKE '%#%' ESCAPE '~'

BeforeExecute
--  Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND '123#456' NOT LIKE '%#%' ESCAPE '~'

