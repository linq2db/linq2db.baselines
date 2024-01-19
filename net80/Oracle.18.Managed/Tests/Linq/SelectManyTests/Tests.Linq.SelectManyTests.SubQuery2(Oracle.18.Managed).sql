﻿BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	p."PersonID",
	p_1."FirstName"
FROM
	"Person" p,
	"Person" p_1
WHERE
	p."PersonID" = p_1."PersonID" AND (p."PersonID" = 1 OR p."PersonID" = 2) AND
	p_1."PersonID" <> 2

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	p."PersonID",
	p_1."FirstName"
FROM
	"Person" p,
	"Person" p_1
WHERE
	p."PersonID" = p_1."PersonID" AND (p."PersonID" = 1 OR p."PersonID" = 2) AND
	p_1."PersonID" <> 2

