﻿BeforeExecute
--  Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	p.ID
FROM
	"LinqDataTypes" p
WHERE
	Length(CAST(CAST(p.ID AS Number(3)) AS VarChar(255))) > 0

