﻿BeforeExecute
--  SapHana.Odbc SapHanaOdbc

SELECT
	"t"."MoneyValue"
FROM
	"LinqDataTypes" "t"
WHERE
	ROUND("t"."MoneyValue") <> 0

