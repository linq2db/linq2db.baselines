﻿BeforeExecute
-- SapHana.Native SapHana

SELECT
	"p"."c1"
FROM
	(
		SELECT
			Cast("t"."MoneyValue" as Double) as "c1"
		FROM
			"LinqDataTypes" "t"
	) "p"
WHERE
	"p"."c1" > 0

