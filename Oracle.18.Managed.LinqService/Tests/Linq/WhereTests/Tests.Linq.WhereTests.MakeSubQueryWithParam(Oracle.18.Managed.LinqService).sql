﻿BeforeExecute
--  Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @n Int32
SET     @n = 1

SELECT
	(p."PersonID" + :n) - 1,
	p."FirstName"
FROM
	"Person" p
WHERE
	p."PersonID" + :n = 2

