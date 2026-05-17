-- SapHana.Odbc SapHanaOdbc

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
	"t"."ID" = 1
LIMIT 1

-- SapHana.Odbc SapHanaOdbc
DECLARE @dt DateTime
SET     @dt = TIMESTAMP '2010-12-14 05:00:07.4250141'

UPDATE
	"LinqDataTypes" "t"
SET
	"DateTimeValue" = ?
WHERE
	"t"."ID" = 1

-- SapHana.Odbc SapHanaOdbc

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
	"t"."ID" = 1
LIMIT 1

-- SapHana.Odbc SapHanaOdbc
DECLARE @pdt DateTime
SET     @pdt = TIMESTAMP '2001-01-11 01:11:21.1000000'

UPDATE
	"LinqDataTypes" "t"
SET
	"DateTimeValue" = ?
WHERE
	"t"."ID" = 1

