BeforeExecute
-- SapHana.Odbc SapHanaOdbc

INSERT INTO "Table2"
(
	"ID"
)
SELECT
	"t"."ID"
FROM
	"Table1" "t"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."ID",
	"t1"."Date"
FROM
	"Table2" "t1"

