﻿BeforeExecute
-- Firebird3 Firebird

SELECT
	Sign("p"."MoneyValue")
FROM
	"LinqDataTypes" "p"
WHERE
	Sign("p"."MoneyValue") <> 0

