BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @dateTime DateTime
SET     @dateTime = '1992-01-11 01:11:21.100'

SELECT
	"t"."DateTimeValue"
FROM
	"LinqDataTypes" "t"
WHERE
	"t"."DateTimeValue" > ?
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @dateTime DateTime
SET     @dateTime = '1993-01-11 01:11:21.100'

SELECT
	"t"."DateTimeValue"
FROM
	"LinqDataTypes" "t"
WHERE
	"t"."DateTimeValue" > ?
LIMIT 1

