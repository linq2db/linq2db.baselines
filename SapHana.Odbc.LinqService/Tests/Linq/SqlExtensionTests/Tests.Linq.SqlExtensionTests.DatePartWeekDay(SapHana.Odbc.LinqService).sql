﻿BeforeExecute
--  SapHana.Odbc SapHanaOdbc

SELECT
	MOD(Weekday("t"."DateTimeValue") + 1, 7) + 1
FROM
	"LinqDataTypes" "t"

