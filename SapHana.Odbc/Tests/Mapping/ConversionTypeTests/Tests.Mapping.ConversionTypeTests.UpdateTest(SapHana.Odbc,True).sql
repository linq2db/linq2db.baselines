-- SapHana.Odbc SapHanaOdbc

UPDATE
	"TrimTestTable" "t1"
SET
	"Data" = '***III***'
WHERE
	"t1"."ID" = 3

-- SapHana.Odbc SapHanaOdbc

UPDATE
	"TrimTestTable" "t"
SET
	"Data" = '***OOO***'
WHERE
	"t"."Data" = '***XXX***'

-- SapHana.Odbc SapHanaOdbc

UPDATE
	"TrimTestTable" "t"
SET
	"Data" = '***SSS***'
WHERE
	"t"."Data" = '***HHH***'

-- SapHana.Odbc SapHanaOdbc

SELECT
	"r"."ID",
	"r"."Data"
FROM
	"TrimTestTable" "r"
ORDER BY
	"r"."ID"

-- SapHana.Odbc SapHanaOdbc

SELECT
	"r"."ID",
	"r"."Data"
FROM
	"TrimTestTable" "r"
ORDER BY
	"r"."ID"

