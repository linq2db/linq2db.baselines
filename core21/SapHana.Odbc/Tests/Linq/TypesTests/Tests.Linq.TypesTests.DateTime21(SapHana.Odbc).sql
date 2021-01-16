BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @dt  -- DateTime
SET     @dt = '2010-12-14 05:00:07.425'

UPDATE
	"LinqDataTypes"
SET
	"LinqDataTypes"."DateTimeValue" = ?
WHERE
	"LinqDataTypes"."ID" = 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @pdt  -- DateTime
SET     @pdt = '2001-01-11 01:11:21.100'

UPDATE
	"LinqDataTypes"
SET
	"LinqDataTypes"."DateTimeValue" = ?
WHERE
	"LinqDataTypes"."ID" = 1

