﻿BeforeExecute
-- SapHana.Native SapHana

SELECT
	"t"."c1"
FROM
	(
		SELECT
			Floor(Atan(Cast("p"."MoneyValue" as Double) / 15) * 15) as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	"t"."c1" <> 0.10000000000000001

