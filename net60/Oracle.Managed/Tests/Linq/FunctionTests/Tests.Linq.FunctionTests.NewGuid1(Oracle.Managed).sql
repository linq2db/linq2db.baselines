﻿BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	p."GuidValue"
FROM
	"LinqDataTypes" p
WHERE
	p."GuidValue" <> Sys_Guid()

