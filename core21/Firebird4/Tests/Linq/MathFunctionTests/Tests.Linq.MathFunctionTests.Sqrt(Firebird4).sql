﻿BeforeExecute
-- Firebird4 Firebird

SELECT
	Floor(Sqrt(Cast("p"."MoneyValue" as Float) / 15) * 15)
FROM
	"LinqDataTypes" "p"
WHERE
	(Floor(Sqrt(Cast("p"."MoneyValue" as Float) / 15) * 15) <> 0.10000000000000001 OR Floor(Sqrt(Cast("p"."MoneyValue" as Float) / 15) * 15) IS NULL)

