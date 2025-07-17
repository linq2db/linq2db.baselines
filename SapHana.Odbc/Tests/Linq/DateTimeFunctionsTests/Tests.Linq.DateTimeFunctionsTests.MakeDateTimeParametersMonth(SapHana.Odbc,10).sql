BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @month Int -- Int32
SET     @month = 10

SELECT
	To_Timestamp(LPad(2010 + "t"."ID", 4, '0') || '-' || LPad(?, 2, '0') || '-01 00:00:00.000')
FROM
	"LinqDataTypes" "t"

