﻿BeforeExecute
-- Firebird4 Firebird

SELECT
	Sign("p"."MoneyValue")
FROM
	"LinqDataTypes" "p"
WHERE
	Sign("p"."MoneyValue") <> 0

