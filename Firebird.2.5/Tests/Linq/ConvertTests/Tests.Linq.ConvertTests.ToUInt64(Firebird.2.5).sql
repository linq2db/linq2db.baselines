﻿BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	Cast(Floor("t"."MoneyValue") as Decimal)
FROM
	"LinqDataTypes" "t"
WHERE
	Cast(Floor("t"."MoneyValue") as Decimal) > 0

