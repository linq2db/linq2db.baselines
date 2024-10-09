BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	CAST(Days_Between("t"."DateTimeValue", Add_Seconds("t"."DateTimeValue", 360000)) AS Integer)
FROM
	"LinqDataTypes" "t"

