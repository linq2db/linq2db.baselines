﻿BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t"."MoneyValue"
FROM
	"LinqDataTypes" "t"
WHERE
	ROUND("t"."MoneyValue", 1) <> 0

