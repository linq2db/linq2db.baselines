﻿BeforeExecute
--  Firebird.5 Firebird4

SELECT
	"p"."MoneyValue"
FROM
	"LinqDataTypes" "p"
WHERE
	CAST(Floor("p"."MoneyValue") AS Decimal) > 0

