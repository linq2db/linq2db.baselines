-- SapHana.Odbc SapHanaOdbc
SELECT
	LEAD("p"."ProcessName", 1, 'None') OVER (ORDER BY "p"."ProcessID")
FROM
	"ProcessNameRecord" "p"

-- SapHana.Odbc SapHanaOdbc
SELECT
	LAG("p"."ProcessName", 1, 'None') OVER (ORDER BY "p"."ProcessID")
FROM
	"ProcessNameRecord" "p"

