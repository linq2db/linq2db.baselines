﻿BeforeExecute
--  Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	RTRIM(REPLACE(CAST(p."MoneyValue" AS VarChar(255)), CAST(',' AS VarChar(255)), CAST('.' AS VarChar(255))), '0.')
FROM
	"LinqDataTypes" p
WHERE
	Length(CAST(p."MoneyValue" AS VarChar(255))) > 0

