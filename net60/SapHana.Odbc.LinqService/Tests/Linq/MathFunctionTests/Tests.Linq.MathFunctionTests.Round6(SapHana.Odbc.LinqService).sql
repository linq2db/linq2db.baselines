﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."c1"
FROM
	(
		SELECT
			Round(Cast("p"."MoneyValue" as Double), 0) as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	("t"."c1" <> 0 OR "t"."c1" IS NULL)

