﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	To_Timestamp(LPad(Year("t"."DateTimeValue"), 4, '0') || '-10-01 20:35:44.000')
FROM
	"LinqDataTypes" "t"
WHERE
	Month(To_Timestamp(LPad(Year("t"."DateTimeValue"), 4, '0') || '-10-01 20:35:44.000')) = 10

