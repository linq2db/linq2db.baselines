﻿BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t"."c1"
FROM
	(
		SELECT
			Floor(Log(2, Cast("p"."MoneyValue" as Float))) as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	"t"."c1" <> 0.10000000000000001

