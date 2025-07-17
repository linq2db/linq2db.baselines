BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @year Int -- Int32
SET     @year = 2010
DECLARE @year Int -- Int32
SET     @year = 2010

SELECT
	To_Timestamp(LPad(?, 4, '0') || '-' || LPad("t"."ID", 2, '0') || '-01 00:00:00.000')
FROM
	"LinqDataTypes" "t"
WHERE
	Year(To_Timestamp(LPad(?, 4, '0') || '-' || LPad("t"."ID", 2, '0') || '-01 00:00:00.000')) = 2010

