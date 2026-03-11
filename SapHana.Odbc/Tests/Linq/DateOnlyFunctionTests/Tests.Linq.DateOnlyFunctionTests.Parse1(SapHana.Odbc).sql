-- SapHana.Odbc SapHanaOdbc

SELECT
	CAST('2010-01-' || Lpad("t"."TransactionId",2,'0') AS Date)
FROM
	"Transactions" "t"
WHERE
	DayOfMonth(CAST('2010-01-' || Lpad("t"."TransactionId",2,'0') AS Date)) > 0

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."TransactionId",
	"t1"."TransactionDate"
FROM
	"Transactions" "t1"

