﻿BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @n Int32
SET     @n = 1

SELECT
	p."PersonID",
	p."FirstName"
FROM
	"Person" p
WHERE
	p."PersonID" + :n = 2

