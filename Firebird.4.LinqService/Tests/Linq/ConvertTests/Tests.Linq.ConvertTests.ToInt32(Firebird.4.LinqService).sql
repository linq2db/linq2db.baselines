﻿BeforeExecute
--  Firebird.4 Firebird4

SELECT
	"p"."MoneyValue"
FROM
	"LinqDataTypes" "p"
WHERE
	CAST(Floor("p"."MoneyValue") AS Int) > 0

