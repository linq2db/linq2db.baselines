﻿BeforeExecute
-- Firebird4 Firebird

SELECT
	"t"."c1"
FROM
	(
		SELECT
			Floor(Exp(Cast("p"."MoneyValue" as Float))) as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	"t"."c1" <> 0.10000000000000001

