﻿BeforeExecute
-- SapHana.Native SapHana

SELECT
	"p"."c1"
FROM
	(
		SELECT
			Cast(Floor("t"."MoneyValue") as Decimal) as "c1"
		FROM
			"LinqDataTypes" "t"
	) "p"
WHERE
	"p"."c1" > 0

