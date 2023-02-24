BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"LinqDataTypes" "t1"
WHERE
	"t1"."ID" > 1000

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

INSERT INTO "LinqDataTypes"
(
	"ID",
	"GuidValue",
	"BoolValue"
)
SELECT
	Cast(Floor("t1"."c1" + 1001) as Integer),
	SYSUUID,
	1
FROM
	(
		SELECT DISTINCT
			Floor(Cast("_"."ID" as Double) / 3) as "c1"
		FROM
			"LinqDataTypes" "_"
	) "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"LinqDataTypes" "t1"
WHERE
	"t1"."ID" > 1000

