﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @n Int32
SET     @n = 1

SELECT
	p."PersonID" + :n,
	p."FirstName"
FROM
	"Person" p
WHERE
	p."PersonID" + :n = 2

