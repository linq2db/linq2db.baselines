﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."c1"
FROM
	(
		SELECT
			Cast(CASE
				WHEN "p"."MoneyValue" - Floor("p"."MoneyValue") = 0.5 AND MOD(Floor("p"."MoneyValue"), 2) = 0
					THEN Floor("p"."MoneyValue")
				ELSE Round("p"."MoneyValue", 0)
			END as Double) as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	("t"."c1" <> 0 OR "t"."c1" IS NULL)

