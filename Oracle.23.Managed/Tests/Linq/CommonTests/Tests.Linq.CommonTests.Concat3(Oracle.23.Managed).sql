﻿BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	p."FirstName"
FROM
	"Person" p
WHERE
	(((p."FirstName" || ' ') || Cast(1 as VarChar(11))) || Cast(2 as VarChar(11))) = 'John 12'

