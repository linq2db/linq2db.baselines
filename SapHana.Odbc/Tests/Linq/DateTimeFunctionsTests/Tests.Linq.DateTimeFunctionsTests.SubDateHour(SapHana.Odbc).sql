BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	CAST(Seconds_Between("t"."DateTimeValue", Add_Seconds("t"."DateTimeValue", 360000)) / 3600 AS Integer)
FROM
	"LinqDataTypes" "t"

