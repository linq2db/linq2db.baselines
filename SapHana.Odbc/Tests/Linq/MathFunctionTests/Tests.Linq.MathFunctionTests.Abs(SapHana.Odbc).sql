﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Abs("p"."MoneyValue")
FROM
	"LinqDataTypes" "p"
WHERE
	Abs("p"."MoneyValue") > 0

