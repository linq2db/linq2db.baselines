﻿BeforeExecute
--  Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	p."PersonID",
	RTRIM((p."FirstName" || '1'), '')
FROM
	"Person" p

