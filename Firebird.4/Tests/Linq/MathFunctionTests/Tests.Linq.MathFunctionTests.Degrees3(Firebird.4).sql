﻿BeforeExecute
--  Firebird.4 Firebird4

SELECT
	CAST(CAST(Floor("t"."MoneyValue") AS Int) AS Float) * 57.295779513082323
FROM
	"LinqDataTypes" "t"
WHERE
	CAST(CAST(CAST(Floor("t"."MoneyValue") AS Int) AS Float) * 57.295779513082323 AS Float) <> 0.10000000000000001

