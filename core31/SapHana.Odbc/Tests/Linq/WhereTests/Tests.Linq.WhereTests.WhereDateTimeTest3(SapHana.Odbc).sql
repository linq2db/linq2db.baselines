﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @DateTimeValue_1  -- DateTime
SET     @DateTimeValue_1 = '2009-09-27'

SELECT
	"_"."ID",
	"_"."MoneyValue",
	"_"."DateTimeValue",
	"_"."BoolValue",
	"_"."GuidValue",
	"_"."BinaryValue",
	"_"."SmallIntValue",
	"_"."StringValue"
FROM
	"LinqDataTypes" "_"
WHERE
	"_"."DateTimeValue" = ?

