﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @DateTimeValue_1  -- DateTime
SET     @DateTimeValue_1 = '2001-01-11 01:11:21.100'

SELECT
	"t"."ID",
	"t"."MoneyValue",
	"t"."DateTimeValue",
	"t"."DateTimeValue2",
	"t"."BoolValue",
	"t"."GuidValue",
	"t"."SmallIntValue",
	"t"."IntValue",
	"t"."BigIntValue",
	"t"."StringValue"
FROM
	"LinqDataTypes" "t"
WHERE
	"t"."DateTimeValue" IN (?)

