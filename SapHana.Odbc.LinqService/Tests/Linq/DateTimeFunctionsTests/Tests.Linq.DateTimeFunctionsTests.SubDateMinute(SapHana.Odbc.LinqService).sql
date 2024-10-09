BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	CAST(Seconds_Between("t"."DateTimeValue", Add_Seconds("t"."DateTimeValue", 6000)) / 60 AS Integer)
FROM
	"LinqDataTypes" "t"

