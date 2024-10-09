﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	CAST("t"."MoneyValue" AS Double)
FROM
	"LinqDataTypes" "t"
WHERE
	CASE
		WHEN CAST("t"."MoneyValue" AS Double) - FLOOR(CAST("t"."MoneyValue" AS Double)) = 0.5 AND MOD(FLOOR(CAST("t"."MoneyValue" AS Double)), 2) = 0
			THEN FLOOR(CAST("t"."MoneyValue" AS Double))
		ELSE ROUND(CAST("t"."MoneyValue" AS Double), 0)
	END <> 0

